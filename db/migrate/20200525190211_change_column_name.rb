class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :reviews, :like, :rating
  end
end
