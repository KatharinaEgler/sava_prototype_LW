class StatusUpdatesController < ApplicationController
  before_action :authenticate_user!

  def index
    @status_updates = current_user.visible_updates.order(created_at: :desc)

  end

  def show
    @status_update = StatusUpdate.find(params[:id])
    @circles = @status_update.circles
    @circle_update = CircleUpdate.new
  end

  def new
    @status_updates = StatusUpdate.new
    @circles = Circle.all
  end

  def create
    @status_update = current_user.status_updates.new(status_updates_params)
    @circle = Circle.find(params[:status_update][:circles])
    @status_update.circle_updates.new(circle: @circle)

    if @status_update.save!
      redirect_to status_update_path(@status_update)
    else
      render :new
    end
  end

  private

  def status_updates_params
    params.require(:status_update).permit(:title, :content, :photo)
  end

end
