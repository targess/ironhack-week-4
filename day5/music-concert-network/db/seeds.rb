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

artist = ['Los Mojinos Escocios', 'Los del Río', 'Benito Kamelas', 'Los chichos', 'Manolo el del bombo']
city = ['Dos Hermanas', 'Madrid', 'Barcelona', 'Cádiz']

50.times do
	concert = Concert.create(
				{ 	artist: artist[rand(artist.length)], 
					venue: 	city[rand(city.length)]+' venue', 
					city: 	city[rand(city.length)], 
					date: 	rand(5.days).seconds.from_now, 
					price: 	rand(100), description: chiquitum[rand(chiquitum.length)]}
		)

	rand(10).times do
		concert.comments.create({ description: 'bla bla bla'})
	end
end