class CreatePassengerBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :passenger_bookings do |t|
      t.references :passengers, null: false, foreign_key: true
      t.references :bookings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
