class Group < ApplicationRecord
has_many :memberships
belongs_to :creator, class_name: 'User'
mount_uploader :photo, PhotoUploader

def members
  members = []
  self.memberships.where(status: 'ACCEPTED').each do |membership|
    members << membership.user
  end
  return members
end
# method members where id group et statut accepte

end

