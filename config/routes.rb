Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  resources :projects do
    resources :comments
  end

  resources :projects do
    resources :project_contributions, only: [:new, :create]
    resources :comments
  end
  
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root 'welcome#index'

  get 'profile', to: 'users#show', as: :user
end
