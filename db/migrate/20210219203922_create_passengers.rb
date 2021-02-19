class CreatePassengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.text :name
      t.text :surname
      t.text :email
      t.integer :billing

      t.timestamps
    end
  end
end
