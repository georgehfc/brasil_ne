class Watchlist < ApplicationRecord
  belongs_to :user
  has_many :movie_watchlists
  has_many :movies, through: :movie_watchlists
end
