class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :watchlist, dependent: :destroy
  has_many :movies, through: :watchlist

  # Validations
  validates_presence_of :name, :email

  # Creates Watchlist right after User
  after_create :create_watchlist

  private

  def create_watchlist
    Watchlist.create!
  end
end
