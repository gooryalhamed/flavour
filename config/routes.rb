Rails.application.routes.draw do
  resources :ingredients
  resources :categories
  resources :recipes
  root 'application#home'

  get 'signup' => 'users#signup'
  get 'login' => 'sessions#login'

  post '/users' => 'users#create'
  post '/sessions' => 'sessions#create'
 
  get '/logout' => 'sessions#destroy'
end
