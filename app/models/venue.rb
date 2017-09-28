class Venue < ApplicationRecord
  include PgSearch
  # we are implementing the pg_search gem, option 'pg_search_scope', 'searching against multiple columns'
  pg_search_scope :search, :against => {
    :location => 'A',
    :categories => 'B',
  }

  CATEGORIES =  ['Wedding', 'Party', 'Baptism', 'Workshop', 'Training', 'Social Event', 'Desk Rental', 'Conference', 'Launch Event', 'Business Meeting', 'Birthday', 'Photo Shoot', 'Film Shoot', 'Concert', 'Get-Together']
  AMENITIES = ['Kitchen', 'Tables', 'Wifi', 'TV', 'Elevator', 'Catering', 'Mics', 'Whiteboard', 'Sound System', 'Flipchart', 'Stage', 'Green Screen', 'Coffee', 'Parking Space', 'Rest Rooms', 'Printer', 'Rooftop', 'Balcony', 'Garden', 'Dressing Room', 'Natural Light']

  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  has_many :bookmarked_users, through: :bookmarks, source: :user
  has_many :bookings, dependent: :destroy
  has_many :availabilities, dependent: :destroy
  has_many :reviews, through: :bookings
  has_many :conversations, dependent: :destroy
  # relation different models

  geocoded_by :location
  after_validation :geocode, if: :location_changed?

  validates :name, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :categories, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :amenities, presence: true
  has_attachments :photos, maximum: 10

   geocoded_by :location
  after_validation :geocode, if: :location_changed?

  # mount_uploader :photo, PictureUploader
  def geocoded?
    self.latitude && self.longitude
  end

  def owner
    user
  end

  def bookmarked_users
    bookmarked_users = []
    self.bookmarks.each do |bookmark|
      bookmarked_users << bookmark.venue
    end
    bookmarked_users
  end

  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end
  end
end
