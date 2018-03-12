class DateRecipe < ApplicationRecord
  belongs_to :group_recipe
  belongs_to :user

  def self.get_todays_group_recipes(date)
    dr = DateRecipe.where(date: date)
    array = []
    dr.each do |date_recipe|
      array << date_recipe.group_recipe
    end
  end
end
