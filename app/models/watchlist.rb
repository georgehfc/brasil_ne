class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :watchlist_movies
  has_many :movies, through: :movie_watchlists
end
