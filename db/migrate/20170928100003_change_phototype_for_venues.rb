class ChangePhototypeForVenues < ActiveRecord::Migration[5.1]
  def change
    remove_column :venues, :photo, :string
    add_column :venues, :photos, :string, array: true, default: []
  end
end
