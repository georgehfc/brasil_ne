class Movie < ApplicationRecord
  has_many :watchlists, dependent: :destroy
end
