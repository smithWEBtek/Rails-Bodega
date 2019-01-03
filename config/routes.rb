Rails.application.routes.draw do
  get 'carts/show'
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  post '/items/new', to: "items#new"
  delete '/signout', to: "sessions#destroy"
	get '/auth/facebook/callback' => 'sessions#create'
	
  resources :users do
    resources :cart, only: [:index]
    resources :purchases, only: [:new]
	end
	
  resources :items, only: [:new, :edit, :update]
  resources :purchases
end
