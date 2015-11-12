Rails.application.routes.draw do

  root to: "site#index"

  get "/login", to: 'sessions#new', as: "login"
  post "/sessions", to: "sussions#create"
  get "/sign_up", to: "users#new", as: "sign_up"
  

  resources :user , only:[:new,:create,:show, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  
end
