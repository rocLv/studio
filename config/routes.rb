Rails.application.routes.draw do
  resources :courses
  devise_for :users
  get 'labs/index'
  get 'home/index'
  root 'labs#index'
end
