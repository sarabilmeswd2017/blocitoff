Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show]
  resources :items, only: [:new, :create, :index]
  root to: 'home#index'
end
