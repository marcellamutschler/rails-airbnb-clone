class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  validates :review_text, presence: true
  validates :review_rating, presence: true

end
