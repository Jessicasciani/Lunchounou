class GroupRecipesController < ApplicationController
  def create
    group_recipe = GroupRecipe.new(group_recipe_params)
    if group_recipe.save
      redirect_to group_path(group_recipe.group)
    else
      redirect_to recipes_path
    end
  end

  def destroy
    @group_recipe = GroupRecipe.find(params[:id])
    @group_recipe.destroy
    redirect_to group_path(@group_recipe.group)
  end


  private

  def group_recipe_params
    params.require(:group_recipe).permit(:group_id, :recipe_id)
  end
end
