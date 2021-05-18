exports.up = function(knex, Promise) {
    return knex.schema.table('supermarket', function (table) {
  			table.string('corporate_name', 255);
  			table.string('cnae', 255);
		})
};

exports.down = function(knex, Promise) {
    return true;
};