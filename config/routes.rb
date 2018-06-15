Rails.application.routes.draw do
  get 'users/new'
  get 'users/create'
  get 'users/show'
  get 'signin', to: "sessions#new"
  post "sessions/create", to: "sessions#create"
  root 'static_pages#home'
end
