Rails.application.routes.draw do
  get 'purchases/index'
  get 'purchases/show'
  get 'purchases/new'
  get 'purchases/edit'
  get 'purchases/create'
  get 'purchases/update'
  get 'purchases/destroy'
  root 'static_pages#home'
  get 'signin', to: "sessions#new"
  delete '/signout', to: "session#destroy"
  post "sessions/create", to: "sessions#create"
  resources :users
  resources :purchases
end
