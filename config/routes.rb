Rails.application.routes.draw do
  resources :project_employees
  resources :employees
  resources :projects
  resources :departments
  resources :cities
  resources :countries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
