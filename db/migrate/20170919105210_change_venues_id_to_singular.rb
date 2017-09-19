class ChangeVenuesIdToSingular < ActiveRecord::Migration[5.1]
  def change
    remove_column :bookmarks, :venues_id, :integer
    add_column :bookmarks, :venue_id, :integer
  end
end
