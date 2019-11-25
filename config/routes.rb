Rails.application.routes.draw do
  resources :comments
  resources :saved_publications, only: [:show, :create, :destroy]
  resources :publications
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
