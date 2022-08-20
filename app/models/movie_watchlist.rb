class MovieWatchlist < ApplicationRecord
  belongs_to :watchlists
  belongs_to :movies
end
