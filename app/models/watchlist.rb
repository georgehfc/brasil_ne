class Watchlist < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  # Validations
  validates_uniqueness_of :user_id, scope: :movie_id
end
