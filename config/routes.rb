Rails.application.routes.draw do
  resources :users
  resources :departments
  resources :cities
  resources :countries, only: [:show, :index]

  post "/signup", to: "users#create"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  resources :employees do
    resources :projects, only: [:show, :index]
  end

  resources :projects do
    resources :employees, only: [:show, :index]
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
