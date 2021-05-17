const bcrypt = require('bcrypt-nodejs')
const  fs = require('fs');


module.exports = app => {
    const { existsOrError, notExistsOrError, equalsOrError } = app.core.validation
    const { uploadImgBase64 } = app.core.upload

    const encryptPassword = password => {
        const salt = bcrypt.genSaltSync(10)
        return bcrypt.hashSync(password, salt)
    }

    const create = async(req, res) => {
        //Recebe o body da requisição
        let obj_body = { ...req.body };

        try {
            existsOrError(obj_body.name,    'Nome não informado!')
            existsOrError(obj_body.email,   'E-mail não informado!')
            existsOrError(obj_body.birth_date,   'Data de nascimento não informada!')
    		existsOrError(obj_body.phone, 'Telefone não informado!')
    		existsOrError(obj_body.cpf, 'CPF não informado!')
            existsOrError(obj_body.password,     'Senha não informada!')
            existsOrError(obj_body.password2, 'Confirmação de senha não informada!')
            equalsOrError(obj_body.password, obj_body.password2,
                'Senhas não conferem!')

            let obj_bodyFromDB = await app.db('customer')
                .where({ email: obj_body.email }).first()
            notExistsOrError(obj_bodyFromDB, 'Email já cadastrado!')
			
            obj_bodyFromDB = await app.db('customer')
                .where({ cpf: obj_body.cpf }).first()
            notExistsOrError(obj_bodyFromDB, 'CPF já cadastrado!')
			
            obj_bodyFromDB = await app.db('customer')
                .where({ phone: obj_body.phone }).first()
            notExistsOrError(obj_bodyFromDB, 'Telefone já cadastrado!')
        }
    	catch(err) {
            return res.status(400).json({msg:err})
        }

        if(obj_body.birth_date.match(/^\d{4}-\d{2}-\d{2}$/) === null){
            return res.status(400).json({msg:'Data de nascimento inválida! Deve estar no formato YYYY-MM-DD'})
        }

        obj_body.password = encryptPassword(obj_body.password)

		obj_to_insert = {}
		obj_to_insert.name = obj_body.name
        obj_to_insert.birth_date = obj_body.birth_date
		obj_to_insert.email = obj_body.email
		obj_to_insert.phone = obj_body.phone
		obj_to_insert.cpf = obj_body.cpf
		obj_to_insert.password = obj_body.password

         
        if(obj_body.picture){
            try {
                obj_to_insert.picture = uploadImgBase64(obj_body.picture)
            }
            catch(err){
                return res.status(400).json({msg:err})
            }
        }

        app.db('customer')
        	.insert(obj_to_insert)
        	.then(() => res.json({msg:"Cliente "+obj_to_insert.name+" cadastrado com sucesso!"}))
        	.catch(
                function(err) {
                    res.status(400).json({msg:err})
                }
            )
        
    }

    const update = async(req, res) => {
    	let customer_id = req.payload.id;
    	let obj_body = { ...req.body };

        let customer = await app.db('customer')
            .where({ id: customer_id }).first()

        keys = Object.keys(obj_body)
 
        /*Pra cada chave encontrada, ele verifica se há algo dentro da chave, 
        se existir, realiza a mudança no produto*/
        for (index in keys){
            if(obj_body[keys[index]] && customer[keys[index]] && obj_body[keys[index]].toString().trim() !== ""){
                customer[keys[index]] = obj_body[keys[index]]
            }
        }

        if(obj_body.password && obj_body.password.toString().trim() !== ""){
        	if(obj_body.password !== obj_body.password2){
        		return res.status(400).json({msg:"As senhas não conferem!"});
        	}
        	else{
        		customer.password = encryptPassword(obj_body.password);
        	}
        }

        if(obj_body.picture){
            try {
                customer.picture = uploadImgBase64(obj_body.picture)
            }
            catch(err){
                return res.status(400).json({msg:err})
            }
        }

        if(obj_body.birth_date && obj_body.birth_date.match(/^\d{4}-\d{2}-\d{2}$/) === null){
            return res.status(400).json({msg:'Data de nascimento inválida! Deve estar no formato YYYY-MM-DD'})
        }

        app.db('customer')
            .where({id: customer_id})
            .update(customer)
            .then(() => res.json({msg:"Cliente "+customer.name+" atualizado com sucesso!"}))
            .catch(
                function(err){
                	console.log(err)
                    res.status(400).json({msg:"Ocorreu um erro ao atualizar o cliente!"})
                }
            )        
    }
	
    const private = async(req, res) => {
        let customer_id = req.payload.id;

        let result = await app.db('customer')
           .select(['name','email', 'birth_date', 'cpf','phone','picture'])
           .where({ id: customer_id }).first()

        return res.json(result);
    }

	//Retorna os métodos
	return { create, update, private}
}