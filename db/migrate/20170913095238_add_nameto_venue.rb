class AddNametoVenue < ActiveRecord::Migration[5.1]
  def change
    add_column :venues, :name, :string
  end
end
