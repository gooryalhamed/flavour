Rails.application.routes.draw do
  resources :ingredients
  resources :categories
  resources :recipes
  
	root 'application#home'
	get "flavour/signup", to: 'sessions#signup'
end
