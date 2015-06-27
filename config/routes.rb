Rails.application.routes.draw do
  get 'users/show'

  devise_for :users

  root 'welcome#index'

  get  'users/:user_id', to: 'users#show', as: :user
end
