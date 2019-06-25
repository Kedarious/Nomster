Rails.application.routes.draw do
  devise_for :users
  root 'places#index'
  resources :places do
  	resources :comments, only: :create
  	resources :photo, only: :create
  end	
  resources :users, only: [:show]
  resources :posts
  root to: 'posts#index'
end
