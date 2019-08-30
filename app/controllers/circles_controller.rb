class CirclesController < ApplicationController
  def index
    @circles = Circle.all
  end

  def show
    @circle = Circle.find(params[:id])
    @circle_member = CircleMember.new
  end

  def new
    @circle = Circle.new
    @circle.circle_members.build
  end

  def create
    @circle = Circle.new(circle_params)
    @circle.user = current_user

    if @circle.save
      redirect_to circles_path
    else
      render :new
    end
  end


  private

  def circle_params
    params.require(:circle).permit(:name, circle_members_attributes: [:email])
  end
end
