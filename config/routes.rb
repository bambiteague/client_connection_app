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

  resources :costumes do #commissions nested under costumes
    resources :commissions, only: [:new, :create, :index]
  end
  # costume_commissions GET '/costumes/:costume_id/commissions' commissions#index
  #                     POST '/costumes/:costume_id/commissions' commissions#create
  # new_costume_commissions GET '/costumes/:costume_id/commissions/new'

  resources :globalusers do #costumes nested under globalusers
    resources :costumes, only: [:new, :create, :index]
  end
  # globaluser_costumes GET '/globalusers/:globaluser_id/costumes' costumes#index
  #                     POST '/globalusers/:globaluser_id/costumes' costumes#create
  # new_globaluser_costume GET '/globalusers/globaluser_id/costumes/new' costumes#new 
  
  resources :sessions
  resources :commissions

end
