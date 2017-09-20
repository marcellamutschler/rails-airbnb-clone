class AddReviewTextToReviews < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :review_text, :string
    add_column :reviews, :review_rating, :integer
  end
end
