class Conversation < ApplicationRecord
  has_many :messages
  has_many :conversation_members
end
