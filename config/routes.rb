Rails.application.routes.draw do
  devise_for :users
  # get 'articles/index'
  root to: "articles#index"
  resources :articles do
  end
  resources :users, only: [:show, :edit, :update]
end
