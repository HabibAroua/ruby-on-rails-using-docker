Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :users
    root 'home#index'
    get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #get 'test/welcome' to: 'TestController#welcome'
    get '/test/welcome'
    get '/hello' , to: 'test#main'
    post 'test/post' , to: 'test#post'
    #https://medium.com/@wintermeyer/authentication-from-scratch-with-rails-5-2-92d8676f6836
    
    resources :users
    resources :sessions, only: [:new, :create, :destroy]
    get 'signup', to: 'users#new', as: 'signup'
    get 'login', to: 'sessions#new', as: 'login'
    get 'logout', to: 'sessions#destroy', as: 'logout'

    
end
