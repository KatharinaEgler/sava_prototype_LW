class CircleMembersController < ApplicationController

  def create
    @circle = Circle.find(params[:circle_id])
    @circle_member = CircleMember.new(circle_member_params)
    @circle_member.circle = @circle
    @circle_member.save

    redirect_to circle_path(@circle)
  end

  private

  def circle_member_params
    params.require(:circle_member).permit(:email)
  end
end
