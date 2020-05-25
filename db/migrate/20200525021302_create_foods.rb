class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.string :food_info
      t.string :image_url
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
