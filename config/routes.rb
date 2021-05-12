# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
    #main page
  root "sessions#home"
    #For Google's GET request back to us as a user attempts to sign in with Google
  get '/auth/:provider/callback' => 'sessions#omniauth'

  get '/signup' => 'globalusers#new'
  post '/signup' => 'globalusers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  get '/profile' => 'globalusers#profile'

  resources :sessions

  resources :costumes do 
    resources :commissions, only: [:new, :create, :index]
  end
  # commissions nested under costumes------>
  # costume_commissions GET '/costumes/:costume_id/commissions' commissions#index
  #                     POST '/costumes/:costume_id/commissions' commissions#create
  # new_costume_commissions GET '/costumes/:costume_id/commissions/new'

  resources :globalusers do 
    resources :costumes, only: [:new, :create, :index, :show, :edit]
  end
  # costumes nested under globalusers------>
  # globaluser_costumes GET '/globalusers/:globaluser_id/costumes'  costumes#index
  # globaluser_costume GET '/globalusers/:globaluser_id/costumes/:id'  costumes#show
  #                   POST '/globalusers/:globaluser_id/costumes'  costumes#create
  # new_globaluser_costume GET '/globalusers/:globaluser_id/costumes/new'  costumes#new 
end
