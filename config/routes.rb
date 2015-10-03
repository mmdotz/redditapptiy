Rails.application.routes.draw do
  resources :votes
  resources :posts
  resources :users

  root 'posts#index'


end
