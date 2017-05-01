Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :categories
  resources :projects


resources :projects do
  resources :comments
  resources :comments do
      resources :replies
end
  root 'projects#index'
end
end