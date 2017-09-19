class ChangeWishlistForVenues < ActiveRecord::Migration[5.1]
  def change
    #remove_reference :venues, :wishlists
    #add_column :venues, :wishlist_id, :integer, foreign_key: true, index: true
  end
end
