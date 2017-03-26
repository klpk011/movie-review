Rails.application.routes.draw do
  devise_for :users
  #root 'welcome#index'
  root 'groups#index'

  resources :groups
end
