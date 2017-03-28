Rails.application.routes.draw do
  devise_for :users
  #root 'welcome#index'
  root 'groups#index'

  resources :groups do
    member do
      post :favorite
      post :unfavorite
    end
    resources :reviews
  end

  namespace :account do
    resources :groups
    resources :reviews
  end

end
