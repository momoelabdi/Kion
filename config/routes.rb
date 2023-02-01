Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources  :listings, only: [:new, :create, :show, :edit, :update, :destroy]

# root to: redirect('/listings')
get 'listings/idex', to: 'listings#index';
post '/listings', to: 'listings#create', as: 'create_listing';
end
