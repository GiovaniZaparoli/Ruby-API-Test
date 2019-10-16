Before '@customer' do

  @@body = {
    customer: {
      name: Faker::Name.name, 
      email: Faker::Internet.email,
      kind: 'P',
      cpf: CPF.generate,
      password: 'mudar123',
      contract_attributes: {
        area_code: '14',
        number: '996782763'
      },
      address_attributes: {
        street: Faker::Address.street_name,
        number: Faker::Address.building_number,
        neighborhood: Faker::Address.community,
        postal_code: '17450000',
        city: Faker::Address.city,
        state: Faker::Address.state_abbr
      }
    }
  }

  @customer = Customer.new(@@body)
end