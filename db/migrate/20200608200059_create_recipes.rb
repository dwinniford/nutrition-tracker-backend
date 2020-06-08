class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :label
      t.string :source
      t.string :url
      t.string :image

      t.timestamps
    end
  end
end
