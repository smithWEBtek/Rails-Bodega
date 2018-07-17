Rails.application.routes.draw do
  get 'carts/show'
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete '/signout', to: "sessions#destroy"
  post "/items/new", to: "items#new"
  post "/items/edit", to: "items#edit"
  get '/auth/facebook/callback' => 'sessions#create'
  resources :users do
    resources :cart, only: [:index]
    resources :purchases, only: [:new]
  end

  resources :purchases
end
