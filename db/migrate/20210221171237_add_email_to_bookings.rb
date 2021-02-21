class AddEmailToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :email, :text
  end
end
