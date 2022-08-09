class User < ApplicationRecord
  has_one :watchlits, dependent: :destroy
  has_many :movies, dependent: :destroy
end
