class AddCustomerIdToRider < ActiveRecord::Migration[5.0]
  def change
    add_column :riders, :customer_id, :string
  end
end
