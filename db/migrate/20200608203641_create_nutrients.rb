class CreateNutrients < ActiveRecord::Migration[6.0]
  def change
    create_table :nutrients do |t|
      t.string :unit
      t.string :name
      t.float :total_amount
      t.integer :yield
      t.float :percent_of_daily_value
      t.integer :recipe_id 

      t.timestamps
    end
  end
end
