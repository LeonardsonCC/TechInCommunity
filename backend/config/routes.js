module.exports = app =>{
	const controller = app.controller;
	const auth = app.core.auth;
	const uploadImg = app.core.upload.uploadImg.single('logo')

	app.route('/')
		.get(function(req, res){
			return res.json({status: "Funcionando! :)"});
		})

    app.route('/product/search')
        .get(controller.product.list)

    app.route('/product')
        .all(auth.requireToken)
        .post(controller.product.create)
        .put(controller.product.update)

    app.route('/supermarket/login')
	    .post(auth.login_supermarket)

	app.route('/test/token')
	    .all(auth.requireToken)
		.get(function(req, res){
			let id = req.payload.id;
			return res.json({status: "Logado através do id: "+id});
		})

    app.route('/supermarket/private')
    	.get(auth.requireToken, controller.supermarket.private)

	app.route('/supermarket')
		.get(controller.supermarket.list)
		.post(controller.supermarket.create)
		.put(auth.requireToken, controller.supermarket.update)

    app.route('/category')
        .get(controller.category.list)
        .post(auth.requireToken, controller.category.create)
        .put(auth.requireToken, controller.category.update)

}