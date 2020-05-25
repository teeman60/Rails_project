class CreateLocations < ActiveRecord::Migration[6.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
