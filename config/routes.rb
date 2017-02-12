Rails.application.routes.draw do
  resources :ingredients
  resources :categories
  resources :recipes
  
	root 'application#home'
	get "/login", to: 'application#login'
	get "/signup", to: 'application#signup'
end
