class IngredientFamiliesController < ApplicationController
  def index
    @ingredient_families = IngredientFamily.all
  end

  def show
    @ingredient_family = IngredientFamily.find(params[:id])
  end
end
