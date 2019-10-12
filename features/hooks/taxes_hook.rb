Before '@taxes' do

	@body = {
		tax: {
			name: 'COFINS',
			value: 5,
			scope: 'São Paulo'
		}
	}

	@taxes = Taxes.new(@body)
end