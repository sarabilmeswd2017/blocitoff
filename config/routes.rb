Rails.application.routes.draw do
  resources :users, only: [:show]
  devise_for :users do
    resources :items, only: [:create]
  end
  root to: 'home#index'
end
