Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    #get 'test/welcome' to: 'TestController#welcome'
    get '/test/welcome'
    get '/' , to: 'test#main'
    post 'test/post' , to: 'test#post'
    
end
