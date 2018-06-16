Rails.application.routes.draw do
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  delete '/signout', to: "session#destroy"
  post "sessions/create", to: "sessions#create"
  resources :users
  resources :purchases
end
