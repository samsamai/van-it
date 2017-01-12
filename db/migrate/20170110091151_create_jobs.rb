class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :pickup_address
      t.float :pickup_lat
      t.float :pickup_lon
      t.string :dropoff_address
      t.float :dropoff_lat
      t.float :dropoff_lon

      t.timestamps
    end
  end
end
