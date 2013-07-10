ConsultartUserManagement::Engine.routes.draw do
  resources :clientes
  resources :users
  resources :pruebas
  resources :roles, :only => :update
  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup',  :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
  match '/contact', :to => 'pages#contact'
  match '/about', :to => 'pages#about'
  match '/help', :to => 'pages#help'
  match '/home', :to => 'pages#home'

  root :to => 'sessions#new'
end