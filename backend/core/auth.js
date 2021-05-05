const authSecret = process.env.AUTHSECRET
const tokenLifeTime = process.env.TOKENLIFETIME
const bcrypt = require('bcrypt-nodejs')
var jwt = require("jwt-simple");

module.exports = app => 
{

    //Método responsável por verificar se as credenciais de supermercados estão corretas e retornar um token 
    const login_supermarket = async (req, res) => {
        //Caso não for informado o email e senha
        if (!req.body.email || !req.body.password) {
            return res.status(400).json({msg:"Usuário ou senha não informados!"})
        }

        const supermarket = await app.db('supermarket')
            .where({ email: req.body.email })
            .first()

        //Verifica se o email está cadastrado
        if(!supermarket) return res.status(400).json({msg:"O email informado não existe!!"})

        //Verifica se a senha fornecida pelo usuario pertence ao usuário cadastrado
        const isMatch = bcrypt.compareSync(req.body.password, supermarket.password)
        if (!isMatch) return res.status(401).json({msg:"Senha incorreta!"})


        let token = createToken(req, supermarket)

		return res.json({token:token})
    }

    //Método que valida se um token é valido e não está expirado
    const requireToken = async (req, res, next) => {
		let bearerHeader = req.headers["authorization"]
        try {
            if(typeof bearerHeader !== 'undefined' && bearerHeader.substr(0,7) === 'Bearer ') {
				let token = bearerHeader.split(" ")[1]
                let payload = jwt.decode(token, authSecret)
				let now = Math.floor(Date.now() / 1000)

                if(payload.exp < now) {
                    return res.status(401).json({msg:"Token expirado!"})
                }

				req.payload = jwt.decode(token, authSecret)
				
				next();
            }
			else{
				return res.status(400).json({msg:"Token não enviado!"})
			}
        } catch(e) {
			console.log(e)
            return res.status(401).json({msg:"Token inválido!"})
        }
    }

    //Método responsável por criar um token e guardá-lo em uma sessão, para as outras funções da rota utilizarem
    function createToken(req, obj){
       //Tempo atual
        const now = Math.floor(Date.now() / 1000)

        //Definindo payload do JWT
        const payload = {
            exp: now + (tokenLifeTime*60),
			id: obj.id,
        }

        let token = jwt.encode(payload, authSecret)
		
		return token
    }

	return { login_supermarket, requireToken }
}
    