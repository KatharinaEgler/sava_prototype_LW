class Slot < ApplicationRecord
  belongs_to :user
  belongs_to :booker, class_name: "User", foreign_key: "booker_id", optional: true

  validates :date, presence: true
  validates :hour, presence: true
  # validates :booked, presence: true
  validates_presence_of :user_id

  def get_start_time
    return self.date.strftime('%l %M %p')
  end

  def get_end_time
    return DateTime.new(self.date.year, self.date.month, self.date.day, self.hour + 1).strftime('%l %M %p')
  end

end
