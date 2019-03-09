Rails.application.routes.draw do
  root 'movies#index'
  devise_for :users
  resources :movies do
    resources :comments
  end
end
