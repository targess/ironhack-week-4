Rails.application.routes.draw do
	  get '/', to: 'site#index'
    get '/products/:id', to: 'site#details', as: :products_details


  	get '/users/', to: 'users#index'
  	get '/users/new', to: 'users#new'
  	post '/users/', to: 'users#create'
  	get '/users/:id', to: 'users#show', as: 'users_show'
  	post '/users/:id', to: 'users#destroy', as: 'users_destroy'

  	get '/users/:user_id/products', to: 'products#index', as: :user_products
  	get '/users/:user_id/products/new', to: 'products#new', as: :user_products_new
  	post '/users/:user_id/products', to: 'products#create'
  	get '/users/:user_id/products/:id', to: 'products#show', as: :user_products_show

    post '/products/:product_id/bids', to: 'bids#create', as: :product_bids
end