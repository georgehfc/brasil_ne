class MovieWatchlist < ApplicationRecord
  belongs_to :watchlists, optional: true
  belongs_to :movies, optional: true
end
