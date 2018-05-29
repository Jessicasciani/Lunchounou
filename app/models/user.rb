class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :photo, presence: true

  has_many :memberships
  has_many :chat_rooms
  has_many :invitations
  has_many :messages, dependent: :destroy
  has_many :groups_joined, through: :memberships, source: :group
  mount_uploader :photo, PhotoUploader

  def groups_created
    Group.where(creator_id: self.id)
  end
end
