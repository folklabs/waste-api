Rails.application.routes.draw do
  resources :container_types
  resources :material_streams
  resources :organizations
  resources :services
  root to: 'visitors#index'
  devise_for :users
end

