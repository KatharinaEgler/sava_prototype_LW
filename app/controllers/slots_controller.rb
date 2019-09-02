class SlotsController < ApplicationController
  before_action :authenticate_user!

  def index
    @slots = Slot.all
  end

  def new
    @slots = Slot.new
  end

  def create
    if @slot.save!
      redirect_to slot_path(@slot)
    els
      render :new
    end
  end

  def update
    @slot = Slot.find(params[:id])
    @slot.update(booked: params[:booked])
    redirect_to slots_path
  end
end
