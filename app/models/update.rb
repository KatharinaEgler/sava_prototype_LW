class Update < ApplicationRecord
  belongs_to :user
  has_many :circle_updates
end
