Rails.application.routes.draw do
    # resources :observations

    # get '/experiments/:experiment_id/observations' => 'observations#index', as: "observations"
    # get '/experiments/:experiment_id/observations/new' => 'observations#new', as: "new_observations"
    # post '/experiments/:id/observations/' => 'observations#create'

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

  resources :proposals

end
