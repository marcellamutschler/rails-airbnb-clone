class AddCityColumnToVenues < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :city, :string
  end
end
