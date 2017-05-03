Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
   root 'projects#index'
  
  resources :categories
  resources :projects

resources :projects do
  resources :members

  resources :comments

  resources :comments do
      resources :replies
  end
 end
end