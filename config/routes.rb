Rails.application.routes.draw do
  devise_for :users
  get 'labs/index'
  get 'home/index'
  # root 'home#index'
end
