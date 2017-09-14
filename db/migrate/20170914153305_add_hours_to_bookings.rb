class AddHoursToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :hours, :integer
  end
end
