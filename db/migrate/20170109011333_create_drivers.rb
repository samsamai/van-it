class CreateDrivers < ActiveRecord::Migration[5.0]
  def change
    create_table :drivers do |t|
      t.string :first_name
      t.string :last_name
      t.decimal :rating
      t.string :current_location
      t.boolean :available
      t.file :photo
      t.string :email
      t.string :address
      t.integer :phone
      t.integer :bank_account_number
      t.date :date_of_birth
      t.text :driving_license_number
      t.date :driving_license_expiry

      t.timestamps
    end
  end
end
