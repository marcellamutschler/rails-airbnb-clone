class CreateConversations < ActiveRecord::Migration[5.1]
  def change
    drop_table :conversations
    create_table :conversations do |t|
      t.integer :owner_id
      t.integer :booker_id
      t.integer :venue_id, foreign_key: true
      t.timestamps
    end
  end
end
