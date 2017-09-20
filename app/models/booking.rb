class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue
  has_one :review
  validates :status, presence: true
  validates :total_price, presence: true
  enum status: [:accepted, :declined, :pending]
end
