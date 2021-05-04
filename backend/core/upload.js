const multer = require('multer')

const storage = multer.diskStorage({
 destination: function(req, file, callback) {
     callback(null, "./public/images");
 },
 filename: function(req, file, callback) {
     callback(null, Date.now() + "_" + file.originalname);
 }
});

const path = require('path');

module.exports = app => {

    const uploadImg = multer({
        storage: storage,
        fileFilter: function (req, file, callback, next) {
            var ext = path.extname(file.originalname);
            if(ext !== '.png' && ext !== '.jpg' && ext !== '.gif' && ext !== '.jpeg') {
                return callback(new Error('O arquivo não é uma imagem!'))
            }
            callback(null, true)
        },
        limits:{
            fileSize: 1024 * 1024
        }
    })

    return { uploadImg }
}