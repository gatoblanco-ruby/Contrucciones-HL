Rails.application.routes.draw do
  get 'osos/new'
  get 'users/new'
  resources :pps
  resources :workers
  resources :welcome
  get 'welcome/index'
  resources :tasks
  root 'welcome#index'
  get 'quienessomos'  => 'nosotros#quienessomos'
  get 'contacto'  => 'contacto#contacto'
  get 'servicio'  => 'servicios#servicio'
  get 'signup'  => 'osos#new'
  resources :osos
end
