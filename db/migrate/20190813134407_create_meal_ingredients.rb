class CreateMealIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_ingredients do |t|
      t.integer :meal_id, null: false
      t.integer :ingredient_id, null: false
      t.integer :quantity, null: false

      t.timestamps
    end
    add_index :meal_ingredients, :meal_id
    add_index :meal_ingredients, :ingredient_id
    
    add_foreign_key :meal_ingredients, :meals
    add_foreign_key :meal_ingredients, :ingredients
  end
end
