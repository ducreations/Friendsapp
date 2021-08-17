Rails.application.routes.draw do
  devise_for :users

  resources :articles
  root to: 'articles#index'

  resources :about, only: [:index]
  resources :contact, only: [:index]
  resources :wishes
  resources :friends

  get 'home', to: 'home#index'
end
