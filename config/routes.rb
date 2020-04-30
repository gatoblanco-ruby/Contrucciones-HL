Rails.application.routes.draw do
  get 'users/new'
  resources :pps
  resources :workers
  resources :welcome
  get 'welcome/index'
  resources :tasks
  root 'welcome#index'
end
