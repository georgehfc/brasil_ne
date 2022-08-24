class Movie < ApplicationRecord
  has_many :watchlists, dependent: :destroy, foreign_key: :user_id
  belongs_to :users, optional: true

  # Validations
  validates_presence_of :title, :year, :duration, :location, :synopsis, :genre
  serialize :genre

  # Cloudinary photo
  has_one_attached :poster
end
