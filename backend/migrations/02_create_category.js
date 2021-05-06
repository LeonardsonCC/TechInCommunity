exports.up = function(knex, Promise) {
    return knex.schema.createTable('category', table => {
        table.increments('id').notNull().primary()
        table.string('name', 50).notNull()
        table.string('description', 200).defaultTo('')
        table.string('picture', 200).defaultTo('default-logo.jpg')
		table.integer('supermarket_id').unsigned().nullable()
		table.integer('active').defaultTo(1)

        table.foreign('supermarket_id').references('id').inTable('supermarket').onDelete('CASCADE')
    })
};

exports.down = function(knex, Promise) {
    knex.schema.dropTable('category')
};