module.exports = {
    "transpileDependencies": [
        "vuetify"
    ],
    publicPath: '/',
    chainWebpack: config => {
        config
            .plugin('html')
            .tap(args => {
                args[0].title = "SGMT - Sistema Gerenciador de Supermercados (TOP)";
                return args;
            })
    }
}
