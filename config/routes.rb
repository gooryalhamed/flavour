Rails.application.routes.draw do
  resources :ingredients
  resources :categories
  resources :recipes
	get "/", to: "application#home"
end
