import requests


mercado_exemplo = {
'name':'Mercado Topper',
'cnpj':'321132123',
'email':'topper@email.com',
'phone':'40028922',
'password':'supersenha',
'password2':'supersenha'
}

r = requests.post("http://localhost:8081/supermarket", json=mercado_exemplo)

print(r.text)

