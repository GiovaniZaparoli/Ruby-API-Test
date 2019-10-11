# language: pt

@login

Funcionalidade: Realizar o login via API.

Cenário: Realizar login

  Dado o endereço da API para realizar o login

  Quando realizar uma requisição de login com credenciais válidas

  Então a API irá retornar o auth token e o código 200

