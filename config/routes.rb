Libapp::Application.routes.draw do
  get "/register", to: "readers#new", as: "register"
  get "/login", to: "sessions#new", as: "login"
  get "/logout", to: "sessions#destroy", as: "logout"
  get "/not_found", to: "home#not_found", as: "not_found"
  get "/access_denied", to: "home#access_denied", as: "access_denied"

  resources :readers
  resources :sessions
  resources :books

  root to: "home#index"
 end
