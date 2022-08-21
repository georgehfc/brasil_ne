Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :movies do
    resources :movie_watchlists, only: [ :show, :create, :update ]
    collection do
      get :highlights, :top
    end
  end
  resources :movie_watchlists, only: [ :destroy ]
  resources :watchlists, only: [ :show ]

  get 'reviews', to: 'movie_watchlists#review'
  get 'my-movies', to: 'movies#my_movies'
end
