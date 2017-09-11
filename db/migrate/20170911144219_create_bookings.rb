class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :location
      t.integer :status
      t.float :total_price
      t.references :user, foreign_key: true
      t.references :venue, foreign_key: true

      t.timestamps
    end
  end
end
