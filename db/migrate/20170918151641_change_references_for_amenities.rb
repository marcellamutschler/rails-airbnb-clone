class ChangeReferencesForAmenities < ActiveRecord::Migration[5.1]
  def change
    remove_reference :amenities, :venues
    add_reference :amenities, :venue, foreign_key:true
  end
end
