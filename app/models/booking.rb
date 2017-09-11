class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :venue

  validates :status, presence: true
  validates :total_price, presence: true
end
