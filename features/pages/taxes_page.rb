class Taxes
  require_relative '../hooks/taxes_hook'

  def initialize(body)
    @auth_token = { Authorization: Login.new.auth_token }
    @parameters_create = { body: body, headers: @auth_token }
    @parameters_get = { headers: @auth_token }
    @url_base = 'https://tst_rspec.assinaturas.sandbox.yapay.com.br/api/taxes'
  end

  def createTax
    HTTParty.post(@url_base, @parameters_create)
  end

  def showTax(id)
    HTTParty.get(@url_base + "/#{id}", @parameters_get)
  end

end