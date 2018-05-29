class ChatRoom < ApplicationRecord

  belongs_to :sender, :foreign_key => :sender_id, class_name: "User"
  belongs_to :receiver, :foreign_key => :receiver_id, class_name: "User"
  # validates_uniqueness_of :sender_id, :scope => :receiver_id

  # scope :between, ->(sender_id, receiver_id) { where("chat_room.sender_id = sender_id AND chat_room.receiver_id = receiver_id OR chat_room.sender_id = receiver_id AND chat_room.receiver_id = sender_id") }
   #scope validation, “between,” this validation takes the sender_id and
   #receiver_id for the conversation and checks whether a conversation exists
   #between these two ids because we only want two users to have one conversation

  has_many :messages
  # belongs_to :user

  def self.between(sender_id, receiver_id)
    where("sender_id  = ? AND receiver_id = ? OR sender_id  = ? AND receiver_id = ?" , sender_id, receiver_id, receiver_id, sender_id)
  end

end
