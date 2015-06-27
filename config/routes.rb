Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :projects
  devise_for :users, :controllers => { :omniauth_callbacks => "omniauth_callbacks" }

  root 'welcome#index'

  get 'profile', to: 'users#show', as: :user
end
