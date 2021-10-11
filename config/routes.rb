Rails.application.routes.draw do
  resources :courses
  resources :task_catalogs
  resources :tasks
  devise_for :users
  resources :labs
  get 'home/index'

  root 'courses#index'
end
