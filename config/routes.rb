Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :movies do
    collection do
      get :highlights, :top
    end
  end
  resource :watchlists, only: [:show] do
    resources :movie_watchlists, only: %i[create update destroy]
  end

  get 'reviews', to: 'movie_watchlists#review'
  get 'my-movies', to: 'movies#my_movies'
end
