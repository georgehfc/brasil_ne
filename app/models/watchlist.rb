class Watchlist < ApplicationRecord
  belongs_to :movie
  belongs_to :user

  # TODO: Validations
end
