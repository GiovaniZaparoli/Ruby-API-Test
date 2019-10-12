Before '@login' do

  @valid_email = 'marcelo@teste.com.br'
  @valid_password = 'mudar123'

  @@body = {
      email: @valid_email,
      password: @valid_password
  }

  @login = Login.new
end