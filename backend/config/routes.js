module.exports = app =>{
	const controller = app.controller;
	const auth = app.core.auth;

	app.route('/')
		.get(function(req, res){
			return res.json({status: "Funcionando! :)"});
		})

    app.route('/product/search')
        .get(controller.product.list)

    app.route('/product')
        .all(auth.requireToken("supermarket"))
        .post(controller.product.create)
        .put(controller.product.update)

    app.route('/supermarket/login')
	    .post(auth.login_supermarket)

	app.route('/test/token')
	    .all(auth.requireToken("supermarket"))
		.get(function(req, res){
			let id = req.payload.id;
			return res.json({status: "Logado através do id: "+id});
		})

    app.route('/supermarket/private')
    	.get(auth.requireToken("supermarket"), controller.supermarket.private)

	app.route('/supermarket')
		.get(controller.supermarket.list)
		.post(controller.supermarket.create)
		.put(auth.requireToken("supermarket"), controller.supermarket.update)

	app.route('/supermarket/download')
		.post(auth.requireToken("supermarket"),controller.supermarket.download)

    app.route('/category')
        .get(controller.category.list)
        .post(auth.requireToken("supermarket"), controller.category.create)
        .put(auth.requireToken("supermarket"), controller.category.update)

	app.route('/customer')
		.post(controller.customer.create)
		.put(auth.requireToken("customer"), controller.customer.update)

    app.route('/customer/private')
    	.get(auth.requireToken("customer"), controller.customer.private)

    app.route('/customer/login')
	    .post(auth.login_customer)

}