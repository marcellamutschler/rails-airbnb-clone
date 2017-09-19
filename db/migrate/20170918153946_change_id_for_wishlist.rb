class ChangeIdForWishlist < ActiveRecord::Migration[5.1]
  def change
    #remove_reference :wishlists, :users
    #add_column :wishlists, :user_id, :integer, foreign_key: true, index: true
  end
end
