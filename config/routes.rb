Rails.application.routes.draw do
  get 'labs/show'
  resources :courses
  resources :task_catalogs
  devise_for :users
  resources :labs
  get 'home/index'

  root 'courses#index'
end
