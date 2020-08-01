class CreateStops < ActiveRecord::Migration[6.0]
  def change
    create_table :stops do |t|
      t.string :code
      t.string :name
      t.string :desc
      t.float :lat
      t.float :lon
      t.string :zone_id
      t.string :url
      t.integer :location_type
      t.integer :parent_station
      t.string  :timezone
      t.integer :wheelchair_boarding

      t.timestamps
    end
  end
end
