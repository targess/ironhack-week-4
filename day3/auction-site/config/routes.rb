Rails.application.routes.draw do
	  get '/', to: 'site#index'
    get '/products/', to: 'site#index'
    get '/products/:id', to: 'site#details', as: :products_details

    resources :users, except: [ :edit, :update ] do
      resources :products, except: [:edit, :update]
    end

    post '/products/:product_id/bids', to: 'bids#create', as: :product_bids
end