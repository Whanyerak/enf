Rails.application.routes.draw do
  root to: 'meta#index'
  devise_for :users

  resources :topics do
  	resources :comments
  end

  resources :events
end
