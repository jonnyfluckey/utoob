Rails.application.routes.draw do

  root 'user#index'
  devise_for :users
  resources :accounts
  resources :comments
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
