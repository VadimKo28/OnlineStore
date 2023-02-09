Rails.application.routes.draw do
  resources :carts
  resources :products
  root 'store#index'
end
