Rails.application.routes.draw do
  resources :to_dos
  resources :users_projects
  resources :user_roles
  resources :projects
  resources :roles
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
