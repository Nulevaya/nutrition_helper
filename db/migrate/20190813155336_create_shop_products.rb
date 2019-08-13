class CreateShopProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_products do |t|
      t.integer :shop_id, null: :false
      t.integer :product_id, null: :false
      t.integer :price, null: :false

      t.timestamps
    end
    add_index :shop_products, :shop_id
    add_index :shop_products, :product_id
    add_index :shop_products, :price
    
    add_foreign_key :shop_products, :shops
    add_foreign_key :shop_products, :products
  end
end
