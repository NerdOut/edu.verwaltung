Rails.application.routes.draw do
  devise_for :users, skip: :registrations
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :orders
  resources :customers
  resources :home, only: [:index]
  root 'home#index'
end
