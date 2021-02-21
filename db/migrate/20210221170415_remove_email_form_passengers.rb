class RemoveEmailFormPassengers < ActiveRecord::Migration[6.1]
  def change
    remove_column :passengers, :email, :text
  end
end
