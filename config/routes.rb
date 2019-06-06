# https://github.com/paweljw/bookstore-backend/blob/part-3/config/routes.rb
Rails.application.routes.draw do
  devise_for :users

  resources :animals do
    get "delete"
  end
  root to: "animals#index"

  resources :zones do
    get "delete"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    resources :animals
    resources :zones
  end
end
