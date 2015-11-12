Rails.application.routes.draw do
    resources :proposals
    resources :experiments

    root "proposals#index"
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/users/new' => 'users#new'
    post '/users' => 'users#create'

  resources :proposals

end
