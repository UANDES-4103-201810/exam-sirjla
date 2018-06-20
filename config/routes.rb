Rails.application.routes.draw do
  root to: 'default#index'
  resources :orders
  resources :deliveries
  resources :customers
  resources :pizzas
  resources :recipes
  resources :crusts
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
