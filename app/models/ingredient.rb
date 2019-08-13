class Ingredient < ApplicationRecord
  belongs_to :ingredient_family, required: true
  has_many :product_ingredients, dependent: :restrict_with_error
  has_many :products, through: :product_ingredients
  has_many :meal_ingredients, dependent: :restrict_with_error
  has_many :meals, through: :meal_ingredients
  
  scope :default_order, -> { order(:id) }
end