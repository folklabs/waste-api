Rails.application.routes.draw do
  resources :organizations
  resources :services
  root to: 'visitors#index'
  devise_for :users
end

