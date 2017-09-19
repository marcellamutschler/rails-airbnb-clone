class ChangeAvailabilitiesForVenues < ActiveRecord::Migration[5.1]
  def change
    remove_reference :availabilities, :venues
    add_reference :availabilities, :venue, foreign_key:true
  end
end
