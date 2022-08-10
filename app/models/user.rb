class User < ApplicationRecord
  has_one :watchlist, dependent: :destroy
  has_many :movies, dependent: :destroy

  # TODO: Validations
end
