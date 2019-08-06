class IngredientFamiliesController < ApplicationController
  def index
    @ingredient_families = IngredientFamily.default_order
  end

  def show
    @ingredient_family = IngredientFamily.find(params[:id])
  end
end
