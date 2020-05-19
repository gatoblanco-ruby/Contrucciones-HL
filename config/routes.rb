Rails.application.routes.draw do
  devise_for :administrators
  devise_for :fellows
  resources :welcome
  root 'welcome#index'
  #Botones de la pagina, para controladores 
  get 'quienessomos'  => 'nosotros#quienessomos'
  get 'administrador'  => 'administrador#administrador'
  get 'contacto'  => 'contacto#contacto'
  get 'servicio'  => 'servicios#servicio'
  resources :pipas
  resources :fellows
end
