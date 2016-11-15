class TextInspection < ApplicationRecord
	def self.count_word_frecuency(my_text)
		words = my_text.split(' ')
		frecuency = Hash.new
		words.each do |word|
			frecuency[word] ||= 1
			frecuency[word] += 1 
		end
		frecuency
	end
end
