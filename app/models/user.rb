class User < ApplicationRecord
  has_one :profile
  has_many :bookings
  has_many :venues
end
