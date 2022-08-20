Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :movies do
    collection do
      get :highlights, :top
    end
  end
  resources :watchlists, only: [ :show, :create ]
  resources :movie_watchlists, only: [ :show, :create, :update, :destroy ] do
    get :review
  end

  get 'my-movies', to: 'movies#my_movies'
end
