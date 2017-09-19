class ChangeRvailabilitiesForVenues < ActiveRecord::Migration[5.1]
  def change
    remove_reference :reviews, :venues
    remove_reference :reviews, :users
    add_column :reviews, :user_id, :integer, foreign_key: true, index: true
    add_column :reviews, :venue_id, :integer, foreign_key: true, index: true
  end
end
