class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookings
  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  validates :name, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :category, presence: true
  validates :description, presence: true
  validates :price, presence: true
  has_attachment :photo

  # mount_uploader :photo, PictureUploader
  def geocoded?
    self.latitude && self.longitude
  end
end
