class IngredientFamily < ApplicationRecord
  has_many :ingredients, dependent: :restrict_with_error

  scope :default_order, -> { order(:id) }
end