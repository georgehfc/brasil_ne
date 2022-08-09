class User < ApplicationRecord
  has_one :watchlit, dependent: :destroy
  has_many :movies, dependent: :destroy

  # TODO: Validations
end
