class CreateAvailabilities < ActiveRecord::Migration[5.1]
  def change
    create_table :availabilities do |t|
      t.datetime :start_date
      t.datetime :end_date
      t.references :venues, foreign_key: true

      t.timestamps
    end
  end
end
