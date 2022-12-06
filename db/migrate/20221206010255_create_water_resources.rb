class CreateWaterResources < ActiveRecord::Migration[7.0]
  def change
    create_table :water_resources do |t|
      t.integer :category
      t.string :gps_lon
      t.string :gps_lat
      t.string :title
      t.string :designation
      t.boolean :salt_water
      t.float :capacity
      t.float :area
      t.float :surface_elevation

      t.timestamps
    end
  end
end
