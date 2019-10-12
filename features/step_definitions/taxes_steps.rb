### Cenário: Cadastrar um imposto ###
Dado('o endereço da API de cadastro de impostos') do
  #Já instanciado pela classe taxes
end

Quando('realizar uma requisição para cadastrar um imposto') do
  @response = @taxes.createTax
end

Então('a API irá retornar os dados do imposto cadastrado e o status 201') do
  parsed_response = JSON.parse(@response.body)

  expect(@response.code).to eq(201)
  expect(parsed_response['name']).to eq(@body[:name])
  expect(parsed_response['value']).to eq(@body[:value])
  expect(parsed_response['scope']).to eq(@body[:scope])
end

### Cenário: Consultar imposto ###

Dado('o endereço da API para consulta de impostos') do
  #Já instanciado pela classe taxes
end

Quando('realizar uma requisição para consultar o imposto') do
  @response = @taxes.showTax(1)
end

Então('a API irá retornar os dados do imposto e o status 200') do
  @parsed_response = JSON.parse(@response.body)

  expect(@response.code).to eq(200)
  expect(@parsed_response['tax']).not_to be_nil
end