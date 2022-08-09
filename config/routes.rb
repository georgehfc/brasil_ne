Rails.application.routes.draw do
  device_for :users
  root to: 'pages#home'
  resources :movies do
    resources :watchlist, only: [ :index, :show, :new, :create ]
    collection do
      get :highlights, :top
    end
  end
  resources :watchlist, only: [ :destroy ]
end
