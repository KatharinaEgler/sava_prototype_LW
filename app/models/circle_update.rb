class CircleUpdate < ApplicationRecord
  belongs_to :status_update
  belongs_to :circle

  validates_presence_of :circle_id, :update_id
end
