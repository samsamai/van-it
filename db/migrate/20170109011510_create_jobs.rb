class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :pickup_location
      t.string :dropoff_location
      t.boolean :status
      t.decimal :actual_cost
      t.decimal :estimated_cost

      t.timestamps
    end
  end
end
