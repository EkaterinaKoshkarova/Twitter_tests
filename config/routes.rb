Rails.application.routes.draw do

  resources :users do
    member do
      get :following, :followers
    end
  end

  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  root  'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin', to: 'session#new',           via: 'get'
  match '/signout', to: 'session#destroy',      via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contacts', to: 'static_pages#contacts', via: 'get'
  match '/session', to: 'session#create',       via: 'post'

end
