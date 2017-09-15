class DeleteLatAndLongFromVenues < ActiveRecord::Migration[5.1]
  def change
    remove_column :venues,:latitude
    remove_column :venues,:longitude

    add_column :venues, :latitude, :float
    add_column :venues, :longitude, :float
  end
end
