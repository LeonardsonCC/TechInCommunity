const  fs = require('fs');

module.exports = app => {
    const { existsOrError, notExistsOrError, equalsOrError } = app.core.validation
    const { uploadImgBase64 } = app.core.upload

    const create = async(req, res) => {
        //Recebe o body da requisição
        let obj_body = { ...req.body };
        let supermarket_id = req.payload.id;

        try {
            existsOrError(obj_body.name,    'Nome não informado!')
            existsOrError(obj_body.quantity,   'Quantidade em estoque não informada!')
    		existsOrError(obj_body.price, 'Preço não informado!')
            existsOrError(obj_body.category,     'Categoria não informada!')
        }
    	catch(err) {
            return res.status(400).json({msg:err})
        }

		obj_to_insert = {};
		obj_to_insert.name = obj_body.name;
		obj_to_insert.quantity = obj_body.quantity;

        if(obj_body.description){
            obj_to_insert.description = obj_body.description;
        }

        if(obj_body.unit){
            obj_to_insert.unit = obj_body.unit;
        }

        if(obj_body.picture){
            try {
                obj_to_insert.picture = uploadImgBase64(obj_body.picture)
            }
            catch(err){
                console.log(err)
                return res.status(400).json({msg:err})
            }
        }

		obj_to_insert.price = obj_body.price;
		obj_to_insert.category_id = obj_body.category;
        obj_to_insert.supermarket_id = supermarket_id;
        app.db('product')
        	.insert(obj_to_insert)
        	.then(() => res.json({msg:"Produto "+obj_to_insert.name+" cadastrado com sucesso!"}))
        	.catch(
                function(err) {
                    res.status(400).json({msg:err})
                }
            )
        
    }

    const update = async(req, res) => {
    	let supermarket_id = req.payload.id;
    	let obj_body = { ...req.body };

        let product = null;
        if(obj_body.id){
	        product = await app.db('product')
	            .where({ id: obj_body.id, supermarket_id: supermarket_id, active: 1 }).first()

	        if(!product){
	        	return res.status(400).json({msg:"Produto não encontrado!"});
	        }
        }
        else{
        	return res.status(400).json({msg:"Id do produto não enviado!"});
        }

        if(obj_body.category_id){
	        let category = await app.db('category')
	            .where({ id: obj_body.category_id, supermarket_id: supermarket_id, active: 1 })
	            .orWhere({id: obj_body.category_id, supermarket_id: null, active: 1})
	            .first()

	        if(!category){
	     		return res.status(400).json({msg:"A categoria selecionada não existe!"});   	
	        }
        }

        keys = Object.keys(obj_body)
 
        /*Pra cada chave encontrada, ele verifica se há algo dentro da chave, 
        se existir, realiza a mudança no produto*/
        for (index in keys){
            if(obj_body[keys[index]] && product[keys[index]] && obj_body[keys[index]].toString().trim() !== ""){
                product[keys[index]] = obj_body[keys[index]]
            }
        }

        if(obj_body.picture){
            try {
                product.picture = uploadImgBase64(obj_body.picture)
            }
            catch(err){
                return res.status(400).json({msg:err})
            }
        }

        product.active = 1;
        app.db('product')
            .where({id: product.id, supermarket_id: supermarket_id})
            .update(product)
            .then(() => res.json({msg:"Produto "+product.name+" atualizado com sucesso!"}))
            .catch(
                function(err){
                	console.log(err)
                    res.status(400).json({msg:"Ocorreu um erro ao atualizar o produto!"})
                }
            )
    }

    const list = async(req, res) => {
        if(req.query.supermarket_id){
            let select = { supermarket_id: req.query.supermarket_id, active: 1}
            if(req.query.category_id){
                select["category_id"] = req.query.category_id;
            }
            if(req.query.id){
                select["id"] = req.query.id;
            }

            let result = null;
            if(req.query.name){
                result = await app.db('product')
                   .select()
                   .where(select)
                   .where('name', 'like', '%'+req.query.name+'%')
            }
            else{
                result = await app.db('product')
                   .select()
                   .where(select)             
            }

            return res.json(result);
        }
        else{
            return res.status(400).json({msg:"Id do supermercado não enviado!"})
        }
    }
	
	//Retorna os métodos
	return { create, update, list}
}