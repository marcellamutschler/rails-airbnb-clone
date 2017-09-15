class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_attachment :photo

   geocoded_by :location
  after_validation :geocode, if: :location_changed?

  # mount_uploader :photo, PictureUploader

end
