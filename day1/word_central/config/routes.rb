Rails.application.routes.draw do
	get '/', to: 'site#home'
	
	get '/text_inspections/new', to: 'text_inspections#new'
	post '/text_inspections', to: 'text_inspections#create'
	get '/text_inspections/result', to: 'text_inspections#result'

	get 'chiquitsums/new', to: 'chiquitsums#new'
	post '/chiquitsums', to: 'chiquitsums#create'
end