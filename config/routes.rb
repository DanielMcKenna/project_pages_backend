Rails.application.routes.draw do
  resources :project_comments
  resources :projects
  resources :project_folders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
