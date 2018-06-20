Rails.application.routes.draw do
  root to: 'default#index'
  get 'default/cart'
  get 'default/checkout'
  get 'default/order'
  post 'default/create_order'
  resources :deliveries
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
