class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true
end
