class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :booker, class_name: "User", foreign_key: "booker_id"
end
