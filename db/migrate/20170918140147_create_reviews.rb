class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :venues, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
