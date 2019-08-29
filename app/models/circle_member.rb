class CircleMember < ApplicationRecord
  attr_accessor :email

  belongs_to :user
  belongs_to :circle

  #before_validation :find_user_by_email

  private

  def find_user_by_email
    self.user = User.find_by(email: self.email)
  end
end
