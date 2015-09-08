Rails.application.routes.draw do
  resources :containers
  resources :rounds
  resources :events
  resources :round_plans
  namespace 'api' do
    get '/doc', to: 'doc#index'
    resources :services
    resources :rounds
  end

  resources :container_types
  resources :material_streams
  resources :organizations
  resources :services
  root to: 'visitors#index'
  devise_for :users
end

