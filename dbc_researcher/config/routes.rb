Rails.application.routes.draw do

    resources :proposals do
      resources :comments
      resources :experiments do
          resources :comments
          resources :observations do
              resources :comments
          end
      end
    end

    root "proposals#index"
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/users/new' => 'users#new'
    post '/users' => 'users#create'

end
