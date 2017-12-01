class Group < ApplicationRecord
has_many :memberships
has_many :group_recipes
belongs_to :creator, class_name: 'User'
mount_uploader :photo, PhotoUploader

  def members
    members = []
    self.memberships.where(status: 'ACCEPTED').each do |membership|
      members << membership.user
    end
    return members
  end

  def has_recipe?(recipe)
    self.group_recipes.each do |group_recipe|
      return true if group_recipe.recipe == recipe
    end
    return false
  end

end


