class AddDatesToBookings < ActiveRecord::Migration[5.1]
  def change
    add_column :bookings, :start_date, :datetime
    add_column :bookings, :end_date, :datetime
  end
end
