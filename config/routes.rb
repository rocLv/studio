Rails.application.routes.draw do
  resources :courses
  devise_for :users
  resources :labs
  get 'home/index'

  root 'labs#index'
end
