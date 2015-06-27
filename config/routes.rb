Rails.application.routes.draw do
  devise_for :users

  root 'welcome#index'

  get 'profile', to: 'users#show', as: :user
end
