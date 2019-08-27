class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :booker, class_name: "User", foreign_key: "booker_id"

  validates :date, presence: true
  validates :hour, presence: true
  validates :booked, presence: true
  validates_presence_of :booker_id, :user_id
end
