class AddBillingToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :billing, :integer
  end
end
