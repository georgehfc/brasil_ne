Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :movies do
    collection do
      get :highlights, :top
    end
  end
  resources :watchlists, only: [ :show ]
  resources :movie_watchlists, only: [ :show, :create, :update, :destroy ]

  get 'reviews', to: 'movie_watchlists#review'
  get 'my-movies', to: 'movies#my_movies'
end
