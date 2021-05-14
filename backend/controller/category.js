const  fs = require('fs');

module.exports = app => {
    const { existsOrError, notExistsOrError, equalsOrError } = app.core.validation

    const create = async(req, res) => {
        //Recebe o body da requisição
        let obj_body = { ...req.body };
        let supermarket_id = req.payload.id;

        try {
            existsOrError(obj_body.name,    'Nome não informado!')
        }
    	catch(err) {
            return res.status(400).json({msg:err})
        }

		obj_to_insert = {};
		obj_to_insert.name = obj_body.name;

        if(obj_body.description){
            obj_to_insert.description = obj_body.description;
        }

        if(obj_body.picture){
            let types = {"i":".png","/":".jpg"};
            let base64Data = obj_body.picture.replace(/^data:image\/png;base64,/, "").replace(/^data:image\/jpeg;base64,/, "");
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

            obj_to_insert.picture = file_name;
        }

        obj_to_insert.supermarket_id = supermarket_id;
        app.db('category')
        	.insert(obj_to_insert)
        	.then(() => res.json({msg:"Categoria "+obj_to_insert.name+" cadastrada com sucesso!"}))
        	.catch(
                function(err) {
                    res.status(400).json({msg:err})
                }
            )
        
    }

    const update = async(req, res) => {
    	let supermarket_id = req.payload.id;
    	let obj_body = { ...req.body };

        let category = null;
        if(obj_body.id){
	        category = await app.db('category')
	            .where({ id: obj_body.id, supermarket_id: supermarket_id, active: 1 }).first()

	        if(!category){
	        	return res.status(400).json({msg:"Categoria não encontrada!"});
	        }
        }
        else{
        	return res.status(400).json({msg:"Id da categoria não enviado!"});
        }

        keys = Object.keys(obj_body)
 
        /*Pra cada chave encontrada, ele verifica se há algo dentro da chave, 
        se existir, realiza a mudança no produto*/
        for (index in keys){
            if(obj_body[keys[index]] && category[keys[index]] && obj_body[keys[index]].toString().trim() !== ""){
                category[keys[index]] = obj_body[keys[index]]
            }
        }

        if(obj_body.picture){
            let types = {"i":".png","/":".jpg"};
            let base64Data = obj_body.picture.replace(/^data:image\/png;base64,/, "").replace(/^data:image\/jpeg;base64,/, "");
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

            category.picture = file_name;
        }

        category.active = 1;
        app.db('category')
            .where({id: category.id, supermarket_id: supermarket_id})
            .update(category)
            .then(() => res.json({msg:"Categoria "+category.name+" atualizada com sucesso!"}))
            .catch(
                function(err){
                	console.log(err)
                    res.status(400).json({msg:"Ocorreu um erro ao atualizar a categoria!"})
                }
            )
    }

    const list = async(req, res) => {
        if(req.query.supermarket_id){
            let select = { supermarket_id: req.query.supermarket_id, active: 1}
            if(req.query.id){
                select["id"] = req.query.id;
            }

            let result = null;
            let select_or = { ...select };
            select_or["supermarket_id"] = null;

            result = await app.db('category')
               .select()
               .where(select)
               .orWhere(select_or)

            return res.json(result);
        }
        else{
            return res.status(400).json({msg:"Id do supermercado não enviado!"})
        }
    }

	//Retorna os métodos
	return { create, update, list}
}