Rails.application.routes.draw do
  get 'toppages/index'
  #root to: 'tasks#index'
  root to: 'toppages#index'
   
   
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
 
  
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
 
  
   get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  

  get 'signup', to: 'users#new'
  
  resources :users
  resources :tasks
end
