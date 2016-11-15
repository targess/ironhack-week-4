Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'contacts#index'
  get '/contacts/new', to: 'contacts#new'
  post '/contacts', to: 'contacts#create'
  get '/contacts', to: 'contacts#index'
  get '/contacts/:id', to: 'contacts#show', as: "contacts_show"
  put '/contacts/:id', to: 'contacts#edit', as: "contacts_edit"
end