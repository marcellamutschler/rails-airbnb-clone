class ChangeReviewRoutes < ActiveRecord::Migration[5.1]
  def change
    remove_column :reviews, :venue_id
    add_column :reviews, :booking_id, :integer
  end
end
