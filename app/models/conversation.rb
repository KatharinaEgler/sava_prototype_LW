class Conversation < ApplicationRecord
  has_many :messages
  has_many :conversation_members
  has_many :users, through: :conversation_members
  has_many :notifications

  accepts_nested_attributes_for :conversation_members, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
end
