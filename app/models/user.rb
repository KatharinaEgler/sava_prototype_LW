class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :slots, dependent: :destroy
  has_many :booked_slots, class_name: "Slot", foreign_key: 'booker_id', dependent: :destroy
  has_many :status_updates, dependent: :destroy
  has_many :circles, dependent: :destroy
  has_many :circle_members, dependent: :destroy
  has_many :circles_as_a_member, through: :circle_members, source: "circle"
  has_many :notifications, dependent: :destroy
  has_many :conversation_members, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :conversations, through: :conversation_members

  mount_uploader :photo, PhotoUploader

  validates :email, presence: true, uniqueness: true
  #validates :first_name, presence: true
  #validates :last_name, presence: true

  def fullname
    self.first_name + " " + self.last_name
  end

  def visible_updates
    StatusUpdate
      .joins(circle_updates: { circle: { circle_members: :user } })
      .where(circles: { id: self.circles_as_a_member })
      .distinct
  end
end
