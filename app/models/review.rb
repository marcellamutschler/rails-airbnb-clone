class Review < ApplicationRecord
  belongs_to :venues
  belongs_to :user
end
