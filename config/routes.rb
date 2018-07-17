Rails.application.routes.draw do
  get 'carts/show'
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete '/signout', to: "sessions#destroy"
  post "/items/new", to: "items#new"
  get "/items/:id/edit", to: "items#edit"
  patch "/items/:id/update", to: "items#update"
  get '/auth/facebook/callback' => 'sessions#create'
  resources :users do
    resources :cart, only: [:index]
    resources :purchases, only: [:new]
  end

  resources :purchases
end
