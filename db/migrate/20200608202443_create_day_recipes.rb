class CreateDayRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :day_recipes do |t|
      t.integer :recipe_id
      t.integer :day_id

      t.timestamps
    end
  end
end
