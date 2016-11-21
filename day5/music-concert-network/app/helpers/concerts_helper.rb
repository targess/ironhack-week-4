module ConcertsHelper
	def short_datetime(time)
		time.to_formatted_s(:short)  
	end
end
