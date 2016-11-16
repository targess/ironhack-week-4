Rails.application.routes.draw do
	get '/', to: 'users#index'
  	get '/users/', to: 'users#index'
  	get '/users/new', to: 'users#new'
  	post '/users/', to: 'users#create'
  	get '/users/:id', to: 'users#show', as: 'users_show'
  	post '/users/:id', to: 'users#destroy', as: 'users_destroy'

end
