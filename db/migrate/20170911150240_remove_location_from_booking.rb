class RemoveLocationFromBooking < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookings, :location, :string
  end
end
