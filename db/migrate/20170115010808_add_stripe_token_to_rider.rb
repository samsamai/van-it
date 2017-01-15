class AddStripeTokenToRider < ActiveRecord::Migration[5.0]
  def change
    add_column :riders, :stripe_token, :string
  end
end
