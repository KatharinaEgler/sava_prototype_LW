class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :slots
  has_many :booked_slots, class_name: "Slot", foreign_key: 'booker_id'
  has_many :status_updates
  has_many :circles
  has_many :circle_members
  has_many :conversation_members
  has_many :messages
end
