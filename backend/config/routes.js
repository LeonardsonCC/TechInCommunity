module.exports = app =>{
	const controller = app.controller;
	const auth = app.core.auth;
	const uploadImg = app.core.upload.uploadImg.single('logo')

	app.route('/')
		.get(function(req, res){
			return res.json({status: "Funcionando! :)"});
		})

	app.route('/supermarket')
		.get(controller.supermarket.list)
		.post(controller.supermarket.create)
		.put(controller.supermarket.update)

}