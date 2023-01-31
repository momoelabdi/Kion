Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources  :listings, only: [:new, :create, :show, :edit, :update, :destroy]

get '/', to: 'listings#index'
end
