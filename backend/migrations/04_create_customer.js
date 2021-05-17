exports.up = function(knex, Promise) {
    return knex.schema.createTable('customer', table => {
        table.increments('id').notNull().primary()
        table.string('name', 80).notNull()
        table.date('birth_date').notNull()
        table.string('email', 80).notNull().unique()
		table.string('cpf', 80).notNull().unique()
        table.specificType('password', 'CHAR(64)').notNull()
        table.string('phone', 18).notNull()
        table.string('picture', 200).defaultTo('default-logo.jpg')
		table.integer('active').defaultTo(1)
    })
};

exports.down = function(knex, Promise) {
    knex.schema.dropTable('customer')
};