class Venue < ApplicationRecord
  belongs_to :user
  has_many :bookmarks
  has_many :bookmarked_users, through: :bookmarks, source: :user
  has_many :bookings
  has_many :amenities
  has_many :availabilities
  has_many :reviews
  geocoded_by :location
  after_validation :geocode, if: :location_changed?

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
  def geocoded?
    self.latitude && self.longitude
  end

  def bookmarked_users
    bookmarked_users = []
    self.bookmarks.each do |bookmark|
      bookmarked_users << bookmark.venue
    end
    bookmarked_users
  end
end
