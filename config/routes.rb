Rails.application.routes.draw do
  get 'signin', to: "sessions#new"
  post "sessions/create", to: "sessions#create"
  root 'static_pages#home'
end
