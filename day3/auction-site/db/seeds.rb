# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

chiquitum = ["Al ataquerl qué dise usteer ese pedazo de te voy a borrar el cerito está la cosa muy malar jarl pupita.",
	"No puedor diodenoo por la gloria de mi madre jarl la caidita ese que llega quietooor ese pedazo de. Está la cosa muy malar no te digo trigo por no llamarte Rodrigor condemor papaar papaar condemor ese hombree no puedor a gramenawer benemeritaar no te digo trigo por no llamarte Rodrigor qué dise usteer.",
	"Ese hombree ese pedazo de hasta luego Lucas quietooor pupita al ataquerl pecador ahorarr ese hombree. Apetecan pupita torpedo ese hombree por la gloria de mi madre de la pradera caballo blanco caballo negroorl apetecan llevame al sircoo. No puedor pupita torpedo sexuarl ese hombree a gramenawer ese pedazo de.",
	"Va usté muy cargadoo qué dise usteer no puedor se calle ustée benemeritaar está la cosa muy malar quietooor la caidita. Ahorarr qué dise usteer de la pradera apetecan está la cosa muy malar apetecan benemeritaar papaar papaar a gramenawer llevame al sircoo. A peich caballo blanco caballo negroorl no te digo trigo por no llamarte Rodrigor pecador torpedo fistro."
	]

first_names = ['Sahu', 'Sergi', 'Alvaro', 'Carlos', 'Dani', 'Jony', 'Herve', 'Mariano', 'Juan Pablo', 'Miguel Angel']

products = ['Iphone','MacBook', 'Ipad', 'Microondas', 'Frigorífico', 'Mesa', 'Televisor', 'Bicicleta', 'Papelera', 'Libro', 'Ropa usada',
	'Lámpara', 'Taza', 'Sofá', 'Espejo', 'Zapatos', 'Cafetera', 'Silla', 'Lote de libros', 'Mando a distancia' ]

domain = ['gmail.com', 'hotmail.com', 'yahoo.es', 'terra.com']

10.times do |i|
	first_name = first_names[rand(first_names.size)]
	user = User.create!({ name: first_name, email: first_name+"-#{i}@"+domain[rand(domain.length)] })

	3.times do |i|
			user.products.create!([
				{ 	title: products[rand(products.length)], 
					description: chiquitum[rand(chiquitum.length)],
					deadline: rand(10.hours).seconds.from_now,
					min_bid: rand(10..50) }])
		end	
end