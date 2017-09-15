class AddCategorytoVenues < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :category, :string
  end
end
