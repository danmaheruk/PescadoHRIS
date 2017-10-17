Rails.application.routes.draw do
  get 'users/new'

  root 'static_pages#home'

# Soft named routed paths

  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'


  # Static routes

  get '/static_pages/home'
  get '/static_pages/help'




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
