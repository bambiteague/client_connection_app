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

  resources :globalusers do #costumes nested under globalusers
    resources :costumes, only: [:new, :create, :index]
  end
  
  resources :sessions
  resources :commissions

end


#NESTED ROUTES ------>
# new show index

# '/globalusers'

# '/globalusers/:id/costumes'
# '/globalusers/:id/commissions'

# '/costumes'

# '/costumes/:id/globalusers'
# '/costumes/:id/commissions'
