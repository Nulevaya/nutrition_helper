class AddIngredientFamilyToIngredients < ActiveRecord::Migration[5.2]
  def change
    add_column :ingredients, :ingredient_family_id, :integer, null: false
    add_foreign_key :ingredients, :ingredient_families
    add_index :ingredients, :ingredient_family_id 
  end
end
