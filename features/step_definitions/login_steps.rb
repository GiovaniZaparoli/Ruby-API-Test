Dado('o endereço da API para realizar o login') do
  #Já instanciado pela classe logiin
end

Quando('realizar uma requisição de login com credenciais válidas') do
  @response = @login.postLogin
end

Então('a API irá retornar o auth token e o código 200') do
  parsed_response = JSON.parse(@response.body)
  
  expect(@response.code).to eq(200)
  expect(parsed_response['auth_token']).not_to be_nil
end