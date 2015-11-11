Rails.application.routes.draw do

    resources :experiments


    get '/users/new' => 'users#new'
    post '/users' => 'users#create'

end
