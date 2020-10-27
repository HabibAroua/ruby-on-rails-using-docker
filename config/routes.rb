Rails.application.routes.draw do
    root 'home#index'
    get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #get 'test/welcome' to: 'TestController#welcome'
    get '/test/welcome'
    get '/hello' , to: 'test#main'
    post 'test/post' , to: 'test#post'
    #https://medium.com/@wintermeyer/authentication-from-scratch-with-rails-5-2-92d8676f6836
    
end
