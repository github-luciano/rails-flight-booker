class CreateFlights < ActiveRecord::Migration[6.1]
  def change
    create_table :flights do |t|
      t.references :from_airport, null: false, foreign_key: { to_table: :airports} #to_table tells rails to which table the foreign key is refferring to. You generate it with "key-name:references"
      t.references :to_airport, null: false, foreign_key: { to_table: :airports}
      t.datetime :datetime
      t.time :flight_duration

      t.timestamps
    end
  end
end
