# language: pt

@taxes

Funcionalidade: Gerenciar os impostos de uma loja

Cenário: Cadastrar um imposto
  Dado o endereço da API de cadastro de impostos
  Quando realizar uma requisição para cadastrar um imposto
  Então a API irá retornar os dados do imposto cadastrado e o status 201

Cenário: Consultar um imposto
  Dado o endereço da API para consulta de impostos
  Quando realizar uma requisição para consultar o imposto
  Então a API irá retornar os dados do imposto e o status 200