class CreateMessages < ActiveRecord::Migration[5.1]
  def change

    create_table :messages do |t|
      t.references :conversation
      t.references :user_id
      t.text :content
      t.boolean :read
      t.timestamps
    end
  end
end
