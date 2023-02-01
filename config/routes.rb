Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

resources :listings, only: [:new, :create, :show, :edit, :update, :destroy]

root to: 'listings#index'
get '/listings/new', to: 'listings#new'
post '/listings', to: 'listings#create'
get '/listings/:id', to: 'listings#show'
get '/listings/:id/edit', to: 'listings#edit'
end
