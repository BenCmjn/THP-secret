Rails.application.routes.draw do
  root 'static_pages#home'
  resources :users

  get 'static_pages/home'
  get 'static_pages/secret', as: 'secret' 

  get 'users/new'
  get 'users/create'
  get 'users/update'
  get 'users/destroy'

  get '/signup',  to: 'users#new'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'

  get	 '/logout',  to: 'sessions#destroy'
  delete '/logout',  to: 'sessions#destroy'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
