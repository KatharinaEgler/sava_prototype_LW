class CirclesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
  end

  def new
  end

  def create
  end

  private

  def circle_params
    params.require(:circle).permit(:name, :user_id)
  end
end
