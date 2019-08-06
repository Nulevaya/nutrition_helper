class IngredientFamily < ApplicationRecord
  has_many :ingredients, dependent: :restrict_with_error
end