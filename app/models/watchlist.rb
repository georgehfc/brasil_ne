class Watchlist < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  # TODO: Validations
end
