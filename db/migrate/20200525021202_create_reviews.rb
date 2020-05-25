class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :date
      t.integer :like
      t.string :comment
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
