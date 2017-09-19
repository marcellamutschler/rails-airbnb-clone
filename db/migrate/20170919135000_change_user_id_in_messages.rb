class ChangeUserIdInMessages < ActiveRecord::Migration[5.1]
  def change
    remove_column :messages, :user_id_id
    add_column :messages, :user_id, :integer, foreign_key: true
  end
end
