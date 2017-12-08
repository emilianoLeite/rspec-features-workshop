Rails.application.routes.draw do
  resources :users
  root to: 'home#index'
  resources :home, only: :index
end
