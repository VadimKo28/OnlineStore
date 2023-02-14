Rails.application.routes.draw do
  devise_for :users
  resources :orders
  resources :line_items
  resources :carts
  resources :products
  get "store/index"
  root to: "store#index", as: "store"
end
