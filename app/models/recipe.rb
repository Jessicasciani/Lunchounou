class Recipe < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  validates :name, length: { maximum: 25 }
  validates :photo, presence: true
end


