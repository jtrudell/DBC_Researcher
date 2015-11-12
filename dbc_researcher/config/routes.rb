Rails.application.routes.draw do
    resources :proposals
    # resources :experiments

    get 'proposals/:proposal_id/experiments/new' => 'experiments#new', as: "new_experiment"
    get '/experiments' => 'experiments#index'
    get 'proposals/:proposal_id/experiments/:id' => 'experiments#show', as: "experiment"
    post 'proposals/:proposal_id/experiments/' => 'experiments#create'

    root "proposals#index"
    get '/login' => 'sessions#new'
    post '/login' => 'sessions#create'
    get '/logout' => 'sessions#destroy'

    get '/users/new' => 'users#new'
    post '/users' => 'users#create'

  resources :proposals

end
