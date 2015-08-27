Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
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

