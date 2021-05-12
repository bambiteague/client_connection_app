# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
 
  root "sessions#home"

  get '/auth/:provider/callback' => 'sessions#omniauth'

  get '/signup' => 'globalusers#new'
  post '/signup' => 'globalusers#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  get '/profile' => 'globalusers#profile'

  get '/complete' => 'globalusers#complete'

  resources :sessions

  resources :costumes do 
    resources :commissions, only: [:new, :create, :index]
  end

  resources :globalusers do 
    resources :costumes, only: [:new, :create, :index, :show, :edit]
  end

end
