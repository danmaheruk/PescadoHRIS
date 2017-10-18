Rails.application.routes.draw do
  root 'static_pages#home'

# Soft named routed paths
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # Static routes
  get 'sessions/new'
  get '/static_pages/home'
  get '/static_pages/help'
  get '/users/new'
  post '/users/create'

 # Resources
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
