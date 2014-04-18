Sophist::Application.routes.draw do
  resources :topics

  resources :lists

  resources :claims

  resources :fields

  root to: 'home#index'

  resources :users
  resources :sessions
  get 'login' => 'sessions#new', as: :login
  get 'logout' => 'sessions#destroy', as: :logout
end









