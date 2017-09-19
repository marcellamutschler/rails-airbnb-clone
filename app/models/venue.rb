class Venue < ApplicationRecord
  CATEGORIES =  ['Wedding', 'Party', 'Baptism', 'Workshop', 'Trainings', 'Social Event', 'Desk Rentals', 'Conferences', 'Launch Event', 'Business Meeting', 'Birthday', 'Photo Shoot', 'Film Shoot', 'Concert', 'Get-Together', 'Other']
  AMENITIES = ['Kitchen', 'Tables', 'Wifi', 'TV', 'Elevator', 'Catering', 'Mics', 'Whiteboard', 'Sound System', 'Flipchart', 'Stage', 'Green Screen', 'Coffee', 'Parking Space', 'Rest Rooms', 'Printer', 'Rooftop', 'Balcony', 'Garden', 'Dressing Room', 'Natural Light']
  belongs_to :user
  has_many :bookmarks
  has_many :bookmarked_users, through: :bookmarks, source: :user
  has_many :bookings
  # has_many :amenities
  has_many :availabilities
  has_many :reviews
  # has_many :categories
  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  validates :name, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :categories, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :categories, presence: true
  validates :amenities, presence: true
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
