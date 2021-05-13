Rails.application.routes.draw do
 
  root "sessions#home"

  get '/auth/:provider/callback' => 'sessions#omniauth'

  get '/signup' => 'globalusers#new'
  post '/signup' => 'globalusers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  get '/logout' => 'sessions#destroy'
  delete '/logout' => 'sessions#destroy'

  get '/profile' => 'globalusers#profile'

  get '/complete' => 'globalusers#complete'
  post '/complete' => 'globalusers#complete'

  resources :sessions

  resources :globalusers do 
    resources :commissions, only: [:edit, :update, :index]
  end

  resources :globalusers do 
    resources :costumes, only: [:new, :create, :index, :show, :edit]
  end

end
