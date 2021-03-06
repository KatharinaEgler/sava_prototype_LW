class PagesController < ApplicationController
  #skip_before_action :authenticate_user!, only: [:home]

  def home
    if current_user.sick_status == true
      @slots = Slot.where(booked: true)
    else
      @slots = Slot.where(booker_id: current_user.id)
    end

    if current_user.sick_status == true
      @update = current_user.status_updates
      .order(created_at: :desc)
      .first
    else
    @update = current_user.visible_updates
      .order(created_at: :desc)
      .first
    end
  end
end
