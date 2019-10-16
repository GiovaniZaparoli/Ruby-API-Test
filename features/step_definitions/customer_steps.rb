Dado('o endereço da API para realizar a criação de clientes') do
  #Já instanciado pela classe customer
end

Quando('realizar uma requisição de criação de cliente com parâmetros válidos') do
  @response = @customer.createCustomer
end

Então('a API irá o cliente criado e código 201') do
  parsed_response = JSON.parse(@response.body)

  expect(@response.code).to eq(201)
end