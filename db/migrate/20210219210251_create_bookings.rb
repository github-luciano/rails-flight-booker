class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :primary, null: false, foreign_key: true
      t.references :passenger2, null: false, foreign_key: true
      t.references :passenger3, null: false, foreign_key: true
      t.references :passenger4, null: false, foreign_key: true
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
