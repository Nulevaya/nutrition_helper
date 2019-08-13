class Product < ApplicationRecord
  has_many :product_ingredients, dependent: :destroy
  has_many :ingredients, through: :product_ingredients
  has_many :shop_products, dependent: :destroy
  has_many :shops, through: :shop_products
end
