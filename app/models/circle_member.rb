class CircleMember < ApplicationRecord
  belongs_to :status_user
  belongs_to :circle

  validates_presence_of :circle_id, :user_id
end
