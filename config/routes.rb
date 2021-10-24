Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks, only: [:new, :create, :edit, :update]
end
