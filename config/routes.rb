Rails.application.routes.draw do
  resources :round_plans
  namespace 'api' do
    resources :services
  end

  resources :container_types
  resources :material_streams
  resources :organizations
  resources :services
  root to: 'visitors#index'
  devise_for :users
end

