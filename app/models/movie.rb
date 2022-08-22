class Movie < ApplicationRecord
  has_many :watchlists, dependent: :delete_all, foreign_key: :user_id
  has_many :users, through: :watchlists

  # Validations
  validates_presence_of :title, :year, :duration, :location, :synopsis, :genre
  serialize :genre

  # Cloudinary photo
  has_one_attached :poster
end
