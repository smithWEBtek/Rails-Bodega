Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete '/signout', to: "session#destroy"
  post "/items/new", to: "items#new"
  resources :users
  resources :purchases
end
