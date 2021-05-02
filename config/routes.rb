Rails.application.routes.draw do
  get '/signup' => 'globalusers#new'
  post '/singup' => 'globalusers#create'

  resources :costumes
  resources :globalusercostumes
  resources :globalusers
  resources :sessions
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
