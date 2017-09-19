class RemoveCategoryfromVenues < ActiveRecord::Migration[5.1]
  def change
    remove_column :venues, :category, :string
  end
end
