# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Contact.create!([{name: 'Jonathan', address: 'bajo un puente', phone: '666666666', email: 'jony@madrid.es'},
	{name: 'Sergi', address: 'la ultima parada del bus', phone: '777777777', email: 'yosoy@elsergio.es'},
	{name: 'Mariano', address: 'Salamanca', phone: '699696969', email: 'nano@madrid.es'},
	{name: 'Herve', address: 'Madrí', phone: '699696969', email: 'herve@madrid.es'},
	{name: 'Dani', address: 'su casa', phone: '000000001', email: 'dani@turkey.tk'},

	])

5.times do |i|
	Contact.create!(name: " person-#{i}", address: "address-#{i}", phone: "#{i.to_s*9}", email: "#{i}person@madrid.es")
end