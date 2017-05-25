Rails.application.routes.draw do
  root to: 'meta#index'
  devise_for :users
  resources :events
end
