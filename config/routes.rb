Rails.application.routes.draw do
  get 'welcome/index'
  resources :tasks
  post 'tasks/index'
  root 'welcome#index'
end
