Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  post "/sessions/create", to: "sessions#create"
  delete '/signout', to: "session#destroy"
  post "/itesms/new", to: "tiems#new"
  resources :users
  resources :purchases
end
