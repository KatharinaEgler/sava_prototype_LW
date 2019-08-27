class StatusUpdate < ApplicationRecord
  belongs_to :user
  has_many :circle_updates

  #mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :content, presence: true
end
