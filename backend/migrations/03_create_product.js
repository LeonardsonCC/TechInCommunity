exports.up = function(knex, Promise) {
    return knex.schema.createTable('product', table => {
        table.increments('id').notNull().primary()
        table.string('name', 50).notNull()
        table.integer('quantity').notNull()
		table.integer('active').defaultTo(1)
        table.string('description', 500).defaultTo('')
        table.string('picture', 200).defaultTo('default-logo.jpg')
        table.decimal('price', 6, 2).notNull()
        table.decimal('promotion_price', 6, 2).nullable()
		table.string('unit', 20).defaultTo('unidade')
        table.integer('category_id').unsigned().notNull()
		table.integer('supermarket_id').unsigned().notNull()

        table.foreign('category_id').references('id').inTable('category').onDelete('CASCADE')
		table.foreign('supermarket_id').references('id').inTable('supermarket').onDelete('CASCADE')
    })
};

exports.down = function(knex, Promise) {
    knex.schema.dropTable('product')
};
