class AddCategoryToVenues < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :categories, :string, array:true, default: []
    add_column :venues, :amenities, :string, array:true, default: []
  end
end
