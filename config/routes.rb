Rails.application.routes.draw do
  devise_for :users
  get 'articles/index'
  root to: "articles#index"
end
