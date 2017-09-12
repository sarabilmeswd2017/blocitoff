Rails.application.routes.draw do
  resources :items, only: [:new, :create, :index]
  resources :users, only: [:show]
  devise_for :users
  root to: 'home#index'
end
