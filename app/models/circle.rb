class Circle < ApplicationRecord
  has_many :circle_members, dependent: :destroy
  has_many :circle_updates
  has_many :status_updates, through: :circle_updates
  belongs_to :user

  validates :name, presence: true

  accepts_nested_attributes_for :circle_members, reject_if: :all_blank, allow_destroy: true
end
