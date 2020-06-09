class AddYieldToRecipes < ActiveRecord::Migration[6.0]
  def change
    add_column :recipes, :yield, :integer
  end
end
