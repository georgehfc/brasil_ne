Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :movies do
    collection do
      get :highlights, :top
    end
  end
  resources :watchlists, only: [ :show, :create ]

  get 'my-watchlist', to: 'watchlists#my_watchlist'
  get 'my-movies', to: 'movies#my_movies'
end
