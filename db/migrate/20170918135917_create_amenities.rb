class CreateAmenities < ActiveRecord::Migration[5.1]
  def change
    create_table :amenities do |t|
      t.string :name
      t.references :venues, foreign_key: true

      t.timestamps
    end
  end
end
