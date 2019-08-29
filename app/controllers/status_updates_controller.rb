class StatusUpdatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @status_updates = StatusUpdate.all
  end

  def new
    @status_updates = StatusUpdate.new
  end

  def create
    @status_update = current_user.status_update.new(status_updates_params)

    if @status_update.save!
      redirect_to status_update_path(@status_update)
    else
      render :new
    end
  end

  private

  def status_updates_params
    params.require(:status_update).permit(:title, :content)
  end
end
