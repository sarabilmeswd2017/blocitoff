Rails.application.routes.draw do
  get 'items/new'

  get 'items/create'

  get 'users/show'
  devise_for :users
  root to: 'home#index'
end
