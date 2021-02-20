class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :primary, null: false, foreign_key: { to_table: :passengers }
      t.references :passenger2, null: true, foreign_key: { to_table: :passengers }
      t.references :passenger3, null: true, foreign_key: { to_table: :passengers }
      t.references :passenger4, null: true, foreign_key: { to_table: :passengers }
      t.references :flight, null: false, foreign_key: { to_table: :flights }

      t.timestamps
    end
  end
end
