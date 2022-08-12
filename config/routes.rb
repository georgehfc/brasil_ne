Rails.application.routes.draw do
  # devise_for :users
  root to: 'pages#home'
  resources :movies do
    resources :watchlists, only: [ :index, :show, :new, :create ]
    collection do
      get :highlights, :top
    end
  end
  resources :watchlist, only: [ :destroy ]
  get "my-watchlist", to: "watchlists#my_watchlist"
  get "my-movies", to: "movies#my_movies"
end
