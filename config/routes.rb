Rails.application.routes.draw do
  resources :users
  resources :employees
  resources :projects
  resources :departments
  resources :cities
  resources :countries, only: [:show, :index]
  # get '/employees/:employee_id/projects', to: 'employees#projects_index'
  # get '/projects/:project_id/employees', to: 'projects#employee_index'

  resources :employees, only: [:show] do
    resources :projects, only: [:show, :index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
