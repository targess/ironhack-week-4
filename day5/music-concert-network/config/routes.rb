Rails.application.routes.draw do

	post '/concerts/search', to: 'concerts#search'
	get '/concerts/popular', to: 'concerts#popular'

	resources :concerts

	root 'concerts#index'
end
