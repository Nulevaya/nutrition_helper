class IngredientsController < ApplicationController
  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)

    if @ingredient.save
      redirect_to @ingredient
    else
      render action: 'new'
    end
  end

  def index
    @ingredients = Ingredient.default_order
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def update
    @ingredient = Ingredient.find(params[:id])

    if @ingredient.update(article_params)
      redirect_to @ingredient
    else
      render action: 'edit'
    end
  end

  def destroy
    @ingredient = Ingredient.find(params[:id])
  
    if @ingredient.destroy
      redirect_to ingredients_path
    end
  end

  private

  def article_params
    params.require(:ingredient).permit(:name, :calorific_value, :proteins, :fats, :carbohydrates)
  end
end
