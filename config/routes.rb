# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

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

  resources :costumes do
    resources :commissions, only: [:new, :create, :index]
  end
  resources :globalusers do
    resources :costumes, only: [:new, :create, :index]
  end
  resources :sessions
  resources :commissions
end

