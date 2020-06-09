class RemoveYieldFromNutrients < ActiveRecord::Migration[6.0]
  def change
    remove_column :nutrients, :yield
  end
end
