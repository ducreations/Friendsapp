Rails.application.routes.draw do
  root to: 'home#index'
  get 'home', to: 'home#index'

  devise_for :users
  resources :about, only: [:index]
  resources :contact, only: [:index]
  resources :wishes
  resources :friends

end
