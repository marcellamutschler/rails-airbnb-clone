class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :capacity, presence: true
  validates :location, presence: true
  validates :description, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader

end
