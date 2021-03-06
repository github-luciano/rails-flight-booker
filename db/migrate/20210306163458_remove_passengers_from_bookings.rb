class RemovePassengersFromBookings < ActiveRecord::Migration[6.1]
  def change
    remove_column :bookings, :primary_id
    remove_column :bookings, :passenger2_id
    remove_column :bookings, :passenger3_id
    remove_column :bookings, :passenger4_id
  end
end
