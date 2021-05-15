const  fs = require('fs');

module.exports = app => {

    function uploadImgBase64(img){
        let types = {"i":".png","/":".jpg"};
        let base64Data = img.replace(/^data:image\/png;base64,/, "").replace(/^data:image\/jpeg;base64,/, "");
        let type = types[base64Data.charAt(0)];

        if(type !== ".jpg" && type !== ".png"){
            throw "Tipo de imagem inválido! (Deve ser .png ou .jpg)";       
        }

        let file_name = process.env.IMAGES_PATH+Date.now()+Math.random().toString(36).substring(7)+type;

        try{
            fs.writeFileSync(__dirname+"/../"+file_name, base64Data, 'base64');
        }
        catch(err){
            console.log(err);
            throw "Ocorreu um erro ao salvar a imagem!";
        }

        return file_name;
    }

    return { uploadImgBase64 }
}