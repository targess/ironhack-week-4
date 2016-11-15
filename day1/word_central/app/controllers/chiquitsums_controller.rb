class ChiquitsumsController < ApplicationController
	@@chiquitum_paragrapahs = ["Lorem fistrum ahorarr al ataquerl qué dise usteer ese pedazo de te voy a borrar el cerito está la cosa muy malar jarl pupita.",
		"No puedor diodenoo por la gloria de mi madre jarl la caidita ese que llega quietooor ese pedazo de. Está la cosa muy malar no te digo trigo por no llamarte Rodrigor condemor papaar papaar condemor ese hombree no puedor a gramenawer benemeritaar no te digo trigo por no llamarte Rodrigor qué dise usteer.",
		"Ese hombree ese pedazo de hasta luego Lucas quietooor pupita al ataquerl pecador ahorarr ese hombree. Apetecan pupita torpedo ese hombree por la gloria de mi madre de la pradera caballo blanco caballo negroorl apetecan llevame al sircoo. No puedor pupita torpedo sexuarl ese hombree a gramenawer ese pedazo de.",
		"Va usté muy cargadoo qué dise usteer no puedor se calle ustée benemeritaar está la cosa muy malar quietooor la caidita. Ahorarr qué dise usteer de la pradera apetecan está la cosa muy malar apetecan benemeritaar papaar papaar a gramenawer llevame al sircoo. A peich caballo blanco caballo negroorl no te digo trigo por no llamarte Rodrigor pecador torpedo fistro."
	]

	def new	
	end

	def create
		@result = []

		if params[:chiquitum][:election] == "paragraphs"
			params[:chiquitum][:quantity].to_i.times do |i|
				@result << @@chiquitum_paragrapahs[i % 3]
			end

		elsif params[:chiquitum][:election] == "words"
			paragraphs_for_words = @@chiquitum_paragrapahs.first.split(" ")
			params[:chiquitum][:quantity].to_i.times do |i|
				@result << paragraphs_for_words[i % paragraphs_for_words.length]
			end
		end

		render 'results'
	end

	def results
	end
end
