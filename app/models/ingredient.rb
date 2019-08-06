class Ingredient < ApplicationRecord
  belongs_to :ingredient_family, required: true

  scope :default_order, -> { order(:id) }
end