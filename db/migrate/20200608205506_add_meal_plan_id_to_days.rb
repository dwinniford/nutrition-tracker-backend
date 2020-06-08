class AddMealPlanIdToDays < ActiveRecord::Migration[6.0]
  def change
    add_column :days, :meal_plan_id, :integer
  end
end
