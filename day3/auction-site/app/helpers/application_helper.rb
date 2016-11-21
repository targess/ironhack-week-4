module ApplicationHelper
	def short_datetime(time)
		time.to_formatted_s(:short)  
	end

	def format_datetime_fields(time)
		time.strftime("%FT%R")
	end
end
