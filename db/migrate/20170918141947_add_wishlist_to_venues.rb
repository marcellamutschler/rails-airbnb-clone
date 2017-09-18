class AddWishlistToVenues < ActiveRecord::Migration[5.1]
  def change
    add_reference :venues, :wishlists, foreign_key: true
  end
end
