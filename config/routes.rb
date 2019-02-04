Rails.application.routes.draw do
  get 'password_resets/new'
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :dashboards
  resources :sessions
  resources :password_resets

  root to: 'sessions#new'
end

