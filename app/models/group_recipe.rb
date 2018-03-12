class GroupRecipe < ApplicationRecord
  belongs_to :group
  belongs_to :recipe
  has_many  :date_recipes
end
