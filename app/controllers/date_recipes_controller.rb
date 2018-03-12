class DateRecipesController < ApplicationController

  def new
    @date_recipe = DateRecipe.new
    @group_recipe = GroupRecipe.find(params[:group_recipe_id])
  end

  def create
    @date_recipe = DateRecipe.new(date_params)
    @group_recipe = GroupRecipe.find(params[:group_recipe_id])
    @date_recipe.group_recipe = @group_recipe
    if @date_recipe.save
      redirect_to group_path(@group_recipe.group)
    else
      render :new
    end
  end

  private

  def date_params
    params.require(:date_recipe).permit(:user_id, :date, :group_recipe_id)
  end

end
