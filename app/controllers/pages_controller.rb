class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user.sick_status == true
      @slots = Slot.where(booked: true)
    else
      @slots = Slot.where(booker_id: current_user.id)
    end
  end
end
