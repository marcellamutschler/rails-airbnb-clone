class CreateVenues < ActiveRecord::Migration[5.1]
  def change
    create_table :venues do |t|
      t.integer :capacity
      t.string :location
      t.text :description
      t.float :price
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
