class ChangeColumnForStatus < ActiveRecord::Migration[5.1]
  def change
    change_column_default :bookings, :status, 2
  end
end
