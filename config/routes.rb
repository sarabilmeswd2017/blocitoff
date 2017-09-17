Rails.application.routes.draw do

  devise_for :users
  resources :users, only: [:show]
  resources :items, only: [:new, :create, :index, :destroy]
  
  root to: 'home#index'
end
