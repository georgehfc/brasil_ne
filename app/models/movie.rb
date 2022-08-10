class Movie < ApplicationRecord
  belongs_to :user
  has_many :watchlists, dependent: :destroy

  # TODO: Validations
end
