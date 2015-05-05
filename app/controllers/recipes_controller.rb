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

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(task_params)
      flash[:success] = "Recipe was successfully updated"
      redirect_to plant_recipe_path(@plant, @recipe)
    else
      render :edit
    end
  end

  def destroy
    recipe = Recipe.find(params[:id])
    recipe.destroy
    redirect_to plant_recipe_path
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
