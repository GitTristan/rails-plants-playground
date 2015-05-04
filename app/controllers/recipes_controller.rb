class RecipesController < ApplicationController

  before_action :set_plant

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = @plant.recipes.new(recipe_params)
    if @recipe.save
      flash[:success] = "Recipe was successfully created"
      redirect_to plant_recipe_path(@plant, @recipe)
    else
      render :new
    end
  end



  private

  def recipe_params
    params.require(:recipe).permit(:recipe_name, :part, :recipe_purpose, :ingredients,
    :prep_time, :total_time, :directions)
  end

  def set_plant
    @plant = Plant.find(params[:plant_id])
  end

end
