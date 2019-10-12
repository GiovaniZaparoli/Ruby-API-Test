class Login
  require_relative '../hooks/login_hook'

  def initialize
    @parameters = { body: @@body }
    @url_base = 'https://tst_rspec.assinaturas.sandbox.yapay.com.br/api/auth_user.json'
  end

  def postLogin
    HTTParty.post(@url_base, @parameters)
  end

  def auth_token
    response = postLogin
    response['auth_token']
  end

end