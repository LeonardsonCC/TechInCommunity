import requests

option = input("Digite a opção: ")

if(option == "create_supermarket"):
    mercado_exemplo = {
    'name':'Mercado Formal',
    'cnpj':'235325235',
    'cnae':'CNAE AQUI',
    'corporate_name':'Mercado Merks LTDA',
    'email':'mercado@email.com',
    'phone':'31221332',
    'password':'supersenha2',
    'password2':'supersenha2'
    }

    r = requests.post("http://localhost:8081/supermarket", json=mercado_exemplo)

    print(r.text)
elif(option == "update_supermarket"):
    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjEzODM3MTksImlkIjo1LCJ0eXBlIjoic3VwZXJtYXJrZXQifQ.-aghQrQIZfgR3Rr8xBURqt3TO7fvndj8KXuMi1QfvgE'
    }

    mercado_exemplo = {
    'corporate_name':'Mercado Merks LTDA',
    }

    r = requests.put("http://localhost:8081/supermarket", json=mercado_exemplo, headers=headers)

    print(r.text)
elif(option == "private_supermarket"):
    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjEzMDE1MzcsImlkIjo0LCJ0eXBlIjoic3VwZXJtYXJrZXQifQ.fsidtjymiaVoNK_ZfgVtgwhzg5gT42AnQvcXZCHum1Y'
    }

    r = requests.get("http://localhost:8081/supermarket/private", headers=headers)

    print(r.text)
elif(option == "login_supermarket"):
    data = {
    'email':'mercado@email.com',
    'password':'supersenha2'
    }
    
    r = requests.post("http://localhost:8081/supermarket/login", json=data)

    print(r.text)
elif(option == "test_token"):
    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjA1MjExNzQsImlkIjoyfQ.Mk0-bft2z2DNaiGrDcfiQwVAwt5sChne8w48xqVqHz8'
    }
    
    r = requests.get("http://localhost:8081/test/token", headers=headers)

    print(r.text)
elif(option == "create_product"):
    produto_exemplo = {
    'name':'Carne de vaca boliviana',
    'quantity':'89',
    'unit':'kg',
    'picture':'data:image/png;base64,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',
    'category':3,
    'price':30
    }

    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjExMzAwMjksImlkIjozfQ.y-Nr9sQhk3Re3fLoT1HYHcEU-8I18aawZ6HuK963tBk'
    }
    
    r = requests.post("http://localhost:8081/product", headers=headers, json=produto_exemplo)

    print(r.text)
elif(option == "update_product"):
    produto_exemplo = {
    'id':6,
    'category_id':5
    }

    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjExMzAwMjksImlkIjozfQ.y-Nr9sQhk3Re3fLoT1HYHcEU-8I18aawZ6HuK963tBk'
    }
    
    r = requests.put("http://localhost:8081/product", headers=headers, json=produto_exemplo)

    print(r.text)
elif(option == "create_category"):
    categoria_exemplo = {
    'name':'Carnes nobres',
    'description':'Blabla bla qualquer coisa aquie'
    }

    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjExMzAwMjksImlkIjozfQ.y-Nr9sQhk3Re3fLoT1HYHcEU-8I18aawZ6HuK963tBk'
    }
    
    r = requests.post("http://localhost:8081/category", headers=headers, json=categoria_exemplo)

    print(r.text)
elif(option == "update_category"):
    categoria_exemplo = {
    'id':17,
    'description':'nova descrição aqui'
    }

    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjExMzAwMjksImlkIjozfQ.y-Nr9sQhk3Re3fLoT1HYHcEU-8I18aawZ6HuK963tBk'
    }
    
    r = requests.put("http://localhost:8081/category", headers=headers, json=categoria_exemplo)

    print(r.text)
elif(option == "create_customer"):
    cliente_exemplo = {
    'name':'Thiago Thiago Thiago 2',
    'birth_date':'2000-01-01',
    'cpf':'14212414',
    'email':'topper2@email.com',
    'phone':'43322332',
    'password':'supersenha2',
    'password2':'supersenha2'
    }

    r = requests.post("http://localhost:8081/customer", json=cliente_exemplo)

    print(r.text)
elif(option == "login_customer"):
    data = {
    'email':'topper2@email.com',
    'password':'supersenha2'
    }
    
    r = requests.post("http://localhost:8081/customer/login", json=data)

    print(r.text)
elif(option == "update_customer"):
    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjEzMDI3MDQsImlkIjoyLCJ0eXBlIjoiY3VzdG9tZXIifQ.WdvhtgKGjWt22lxsogXLSTGvI05Emz1Mpum-yboXmvw'
    }

    cliente_exemplo = {
    'name':'Thiago xD',
    }

    r = requests.put("http://localhost:8081/customer", json=cliente_exemplo, headers=headers)

    print(r.text)
elif(option == "private_customer"):
    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjEzMDI3MDQsImlkIjoyLCJ0eXBlIjoiY3VzdG9tZXIifQ.WdvhtgKGjWt22lxsogXLSTGvI05Emz1Mpum-yboXmvw'
    }

    r = requests.get("http://localhost:8081/customer/private", headers=headers)

    print(r.text)
