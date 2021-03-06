class Booking < ApplicationRecord
  # all classes inherit from Application Record which itself inherit from
  # Active Record : Base
  # so in the end everyone model inherit from ActiveRecord::Base
  belongs_to :user
  belongs_to :venue
  has_one :review, dependent: :delete
  #has_many :reviews, dependent: :destroy
  validates :status, presence: true
  validates :total_price, presence: true

  enum status: [:accepted, :declined, :pending]

  def owner
    venue.user
  end

#Booking.owner marche
#Booking.user marche pas car pas de méthode user dans le model.
  def hours
    (end_date.to_datetime - start_date.to_datetime).to_f * 24
  end
end
