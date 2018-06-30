Rails.application.routes.draw do
  get 'carts/show'
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete '/signout', to: "sessions#destroy"
  post "/items/new", to: "items#new"
  get '/auth/facebook/callback' => 'sessions#create'
  resources :users do
    resource :cart, only: [:show]
  end

  resources :purchases
end
