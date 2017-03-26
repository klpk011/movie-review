Rails.application.routes.draw do
  #root 'welcome#index'
  root 'groups#index'

  resources :groups
end
