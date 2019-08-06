class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false
      t.integer :calorific_value, null: false
      t.integer :proteins, null: false
      t.integer :fats, null: false
      t.integer :carbohydrates, null: false
      t.timestamps
    end
  end
end
