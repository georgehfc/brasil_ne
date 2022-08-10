class User < ApplicationRecord
  has_one :watchlist, dependent: :destroy
  has_many :movies, dependent: :destroy

  # Validations
  validates_presence_of :name, :email
end
