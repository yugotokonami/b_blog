Rails.application.routes.draw do
  devise_for :users
  # get 'articles/index'
  root to: "articles#index"
  resources :articles, only: [:index, :new, :create]
end
