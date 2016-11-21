Rails.application.routes.draw do
	get '/', to: 'products#index'
    get '/products/', to: 'products#index'
    get '/products/:id', to: 'products#details', as: :products_details

    resources :users, except: [ :edit, :update ] do
      resources :products, except: [:edit, :update, :index]
    end

    post '/products/:product_id/bids', to: 'bids#create', as: :product_bids

    root 'products#index'
end