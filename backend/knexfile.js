module.exports = {
	client: 'mysql',
	connection: {
		user: 'root',
		host: 'localhost',
		password: '',
		database: 'mercatop'
	},
	pool: {
		min: 0,
		max: 10
	},
	migrations: {
		tableName: 'knex_migrations'
	}
};
