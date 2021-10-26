Rails.application.routes.draw do
  devise_for :users
  root to: 'tasks#index'
  resources :tasks, only: [:new, :create, :edit, :update, :destroy]
end
