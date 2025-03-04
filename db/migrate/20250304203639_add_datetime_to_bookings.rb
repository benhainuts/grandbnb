class AddDatetimeToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :datetime, :datetime
  end
end
