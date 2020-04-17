Rails.application.routes.draw do
  resources :pps
  resources :workers
  get 'welcome/index'
  resources :tasks
  post 'tasks/index'
  root 'welcome#index'
end
