class CircleMember < ApplicationRecord
  belongs_to :status_user
  belongs_to :circle
end
