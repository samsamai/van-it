class ChangeCustomerIdTypeOnRiders < ActiveRecord::Migration[5.0]
  def change
    change_column :riders, :customer_id, :string
  end
end
