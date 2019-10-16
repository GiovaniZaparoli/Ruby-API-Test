# language: pt

@customer

Funcionalidade: Cadastrar um cliente via API.

Cenário: Cadastrar pessoa física
  Dado o endereço da API para realizar a criação de clientes
  Quando realizar uma requisição de criação de cliente com parâmetros válidos
  Então a API irá o cliente criado e código 201

