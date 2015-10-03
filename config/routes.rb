Rails.application.routes.draw do
  get 'sessions/index'

  get 'sessions/show'

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/update'

  get 'sessions/destroy'

  resources :votes
  resources :posts
  resources :users

  get '/login',       to: 'sessions#new',     as: 'new_login'
  post '/login',      to: 'sessions#create',  as: 'create_session'
  delete '/logout',   to: 'sessions#destroy', as: 'logout'

  root 'posts#index'

end
