import requests

option = input("Digite a opção: ")

if(option == "create_supermarket"):
    mercado_exemplo = {
    'name':'Mercado Muito Top',
    'cnpj':'346436',
    'email':'topper3@email.com',
    'phone':'42244',
    'password':'supersenha2',
    'password2':'supersenha2'
    }

    r = requests.post("http://localhost:8081/supermarket", json=mercado_exemplo)

    print(r.text)
elif(option == "login_supermarket"):
    data = {
    'email':'topper2@email.com',
    'password':'supersenha2'
    }
    
    r = requests.post("http://localhost:8081/supermarket/login", json=data)

    print(r.text)
elif(option == "test_token"):
    headers = {
    'Authorization':'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE2MjAyNjQzMTQsImlkIjoyfQ.o2v1WHU39td-qvnd0odlg2Dca3HO-TfF8AL_-ZP6PAw'
    }
    
    r = requests.get("http://localhost:8081/test/token", headers=headers)

    print(r.text)