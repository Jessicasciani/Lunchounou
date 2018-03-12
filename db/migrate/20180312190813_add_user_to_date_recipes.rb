class AddUserToDateRecipes < ActiveRecord::Migration[5.0]
  def change
    add_reference :date_recipes, :user, index: true
  end
end
