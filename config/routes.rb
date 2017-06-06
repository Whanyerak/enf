Rails.application.routes.draw do
  root to: 'meta#index'

  ActiveAdmin.routes(self)
  devise_for :admin_users, { class_name: 'User' }.merge(ActiveAdmin::Devise.config)
  devise_for :users

  resources :topics do
  	resources :comments
  end

  resources :events
end
