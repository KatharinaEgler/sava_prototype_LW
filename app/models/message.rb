class Message < ApplicationRecord
  belongs_to :user
  belongs_to :conversation

  validates_presence_of :content, :conversation_id, :user_id
  after_create :update_conversations

  def update_conversations
    self.conversation.touch
    self.conversation.save
  end
end
