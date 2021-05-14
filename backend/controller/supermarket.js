const bcrypt = require('bcrypt-nodejs')
const  fs = require('fs');


module.exports = app => {
    const { existsOrError, notExistsOrError, equalsOrError } = app.core.validation

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
    		existsOrError(obj_body.phone, 'Telefone não informado!')
    		existsOrError(obj_body.cnpj, 'CNPJ não informado!')
            existsOrError(obj_body.password,     'Senha não informada!')
            existsOrError(obj_body.password2, 'Confirmação de senha não informada!')
            equalsOrError(obj_body.password, obj_body.password2,
                'Senhas não conferem!')

            let obj_bodyFromDB = await app.db('supermarket')
                .where({ email: obj_body.email }).first()
            notExistsOrError(obj_bodyFromDB, 'Email já cadastrado!')
			
            obj_bodyFromDB = await app.db('supermarket')
                .where({ cnpj: obj_body.cnpj }).first()
            notExistsOrError(obj_bodyFromDB, 'CNPJ já cadastrado!')
			
            obj_bodyFromDB = await app.db('supermarket')
                .where({ phone: obj_body.phone }).first()
            notExistsOrError(obj_bodyFromDB, 'CNPJ já cadastrado!')
        }
    	catch(err) {
            return res.status(400).json({msg:err})
        }

        obj_body.password = encryptPassword(obj_body.password)

		obj_to_insert = {}
		obj_to_insert.name = obj_body.name
		obj_to_insert.email = obj_body.email
		obj_to_insert.phone = obj_body.phone
		obj_to_insert.cnpj = obj_body.cnpj
		obj_to_insert.password = obj_body.password

        if(obj_body.logo){
            let types = {"i":".png","/":".jpg"};
            let base64Data = obj_body.logo.replace(/^data:image\/png;base64,/, "").replace(/^data:image\/jpeg;base64,/, "");
            let type = types[base64Data.charAt(0)];

            if(type !== ".jpg" && type !== ".png"){
                return res.status(400).json({msg:"Tipo de imagem inválido! (Deve ser .png ou .jpg)"});       
            }

            let file_name = process.env.IMAGES_PATH+Date.now()+Math.random().toString(36).substring(7)+type;

            try{
                fs.writeFileSync(__dirname+"/../"+file_name, base64Data, 'base64');
            }
            catch(err){
                console.log(err);
                return res.status(400).json({msg:"Ocorreu um erro ao salvar a imagem!"});
            }

            obj_to_insert.logo = file_name;
        }

        app.db('supermarket')
        	.insert(obj_to_insert)
        	.then(() => res.json({msg:"Mercado "+obj_to_insert.name+" cadastrado com sucesso!"}))
        	.catch(
                function(err) {
                    res.status(400).json({msg:err})
                }
            )
        
    }

    const update = async(req, res) => {
    	let supermarket_id = req.payload.id;
    	let obj_body = { ...req.body };

        let supermarket = await app.db('supermarket')
            .where({ id: supermarket_id }).first()

        keys = Object.keys(obj_body)
 
        /*Pra cada chave encontrada, ele verifica se há algo dentro da chave, 
        se existir, realiza a mudança no produto*/
        for (index in keys){
            if(obj_body[keys[index]] && supermarket[keys[index]] && obj_body[keys[index]].toString().trim() !== ""){
                supermarket[keys[index]] = obj_body[keys[index]]
            }
        }

        if(obj_body.password && obj_body.password.toString().trim() !== ""){
        	if(obj_body.password !== obj_body.password2){
        		return res.status(400).json({msg:"As senhas não conferem!"});
        	}
        	else{
        		supermarket.password = encryptPassword(obj_body.password);
        	}
        }

        if(obj_body.logo){
            let types = {"i":".png","/":".jpg"};
            let base64Data = obj_body.logo.replace(/^data:image\/png;base64,/, "").replace(/^data:image\/jpeg;base64,/, "");
            let type = types[base64Data.charAt(0)];

            if(type !== ".jpg" && type !== ".png"){
                return res.status(400).json({msg:"Tipo de imagem inválido! (Deve ser .png ou .jpg)"});       
            }

            let file_name = process.env.IMAGES_PATH+Date.now()+Math.random().toString(36).substring(7)+type;

            try{
                fs.writeFileSync(__dirname+"/../"+file_name, base64Data, 'base64');
            }
            catch(err){
                console.log(err);
                return res.status(400).json({msg:"Ocorreu um erro ao salvar a imagem!"});
            }

            supermarket.logo = file_name;
        }

        app.db('supermarket')
            .where({id: supermarket_id})
            .update(supermarket)
            .then(() => res.json({msg:"Mercado "+supermarket.name+" atualizado com sucesso!"}))
            .catch(
                function(err){
                	console.log(err)
                    res.status(400).json({msg:"Ocorreu um erro ao atualizar o supermercado!"})
                }
            )        
    }
	
    const private = async(req, res) => {
        let supermarket_id = req.payload.id;

        let result = await app.db('supermarket')
           .select(['name','email', 'cnpj','phone','logo'])
           .where({ id: supermarket_id }).first()

        return res.json(result);
    }

    const list = async(req, res) => {
        if(req.query.supermarket_id && req.query.supermarket_id !== ""){
            let result = await app.db('supermarket')
               .select(['name','cnpj','phone','logo'])
               .where({ id: req.query.supermarket_id }).first()
               
            if(result){
                return res.json(result);
            }
            else{
                return res.json({msg: "Este supermercado não existe!"});
            }
        }
        else{
            let result = await app.db('supermarket')
               .select(['name','cnpj','phone','logo'])
            if(result){
                return res.json(result);
            }
            else{
                return res.json({msg: "Não há supermercados cadastrados!"});
            }
        }
    }

	//Retorna os métodos
	return { create, update, list, private}
}