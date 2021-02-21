class RemoveBillingFormPassengers < ActiveRecord::Migration[6.1]
  def change
    remove_column :passengers, :billing, :integer 
  end
end
