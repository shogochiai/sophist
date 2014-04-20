Sophist::Application.routes.draw do
  root to: 'home#index'

  resources :users
  resources :sessions
  resources :topics
  resources :lists
  resources :claims
  resources :fields

  get "oauth/callback" => "oauths#callback" # for use with Github
  post "oauth/callback" => "oauths#callback"
  get "oauth/:provider" => "oauths#oauth", as: :auth_at_provider
  get 'login' => 'sessions#new', as: :login
  get 'logout' => 'sessions#destroy', as: :logout
end
