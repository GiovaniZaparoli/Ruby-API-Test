class Customer
  require_relative '../hooks/customer_hook'

  def initialize(body)
    @auth_token = { Authorization: Login.new.auth_token }
    @parameters_create = { body: body, headers: @auth_token }
    @parameters_get = { headers: @auth_token }
    @url_base = 'https://tst_rspec.assinaturas.sandbox.yapay.com.br/api/customers'
  end

  def createCustomer
    HTTParty.post(@url_base, @parameters_create)
  end

end