class TextInspectionsController < ApplicationController
	def new	
	end

	def create
		@text 		  = params[:text_inspection][:user_text]
		@word_count   = @text.split(' ').length
		@time_to_read = ((@word_count.to_f / 275.to_f) * 60.to_f)
		@frecuency 	  = TextInspection.count_word_frecuency(@text)

		render 'results'
	end

	def results
	end

end