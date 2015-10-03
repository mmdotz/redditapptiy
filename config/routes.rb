Rails.application.routes.draw do

  resources :votes
  resources :posts
  resources :users

  get '/login',       to: 'sessions#new',     as: 'new_login'
  post '/login',      to: 'sessions#create',  as: 'create_session'
  delete '/logout',   to: 'sessions#destroy', as: 'logout'

  root 'sessions#new'

end
