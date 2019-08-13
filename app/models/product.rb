class Product < ApplicationRecord
  has_many :product_ingredients, dependent: :destroy
  has_many :ingredients, through: :product_ingredients
end
