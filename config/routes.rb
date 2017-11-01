Rails.application.routes.draw do
  get 'password_resets/new'

  get 'password_resets/edit'

  root 'static_pages#home'

# Soft named routed paths
  get '/help', to: 'static_pages#help'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'


  # Static routes
  get '/sessions/new'
  get '/static_pages/home'
  get '/static_pages/help'
  get '/users/new'
  post '/users/create'
  get '/static_pages/thisispescado'
  get '/static_pages/processes'
  get '/static_pages/applications'
  get '/static_pages/benefits'
  get '/users/admin'
  get '/users/admins'
  get '/users/show'
  get '/users/index'



 # Resources
  resources :users
  resources :account_activations, only: [:edit]
  resources :password_resets,   only: [:new, :create, :edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # routes for downloads DONT TOUCH
  get '/static_pages/holidayreq'
  get '/static_pages/eyetests'
  get '/static_pages/lgvip'
  get '/static_pages/flexiapp'
  get '/static_pages/healthsaf'
  get '/static_pages/equalopp'
  get '/static_pages/addhols'
  get '/static_pages/accompol'
  get '/static_pages/carpol'
  get '/static_pages/devilscomic'
  get '/static_pages/confpol'
  get '/static_pages/parentals'
  get '/static_pages/patpol'
  get '/static_pages/probrev'
  get '/static_pages/parental'
  get '/static_pages/matpol'
  get '/static_pages/flexwork'
  get '/static_pages/staffdatpol'
  get '/static_pages/discounts'
  get '/static_pages/benefitspic'
  get '/static_pages/orgstr'
  get '/static_pages/strat16'

end
