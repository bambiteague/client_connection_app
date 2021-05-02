Rails.application.routes.draw do
  #main page
  root "sessions#home"
  
  #signup routes
  get '/signup' => 'globalusers#new'
  post '/signup' => 'globalusers#create'

  #login routes
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  #logout route
  delete '/logout' => 'sessions#destroy'

  resources :costumes
  resources :globalusercostumes
  resources :globalusers
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
