class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversation = current_user.conversation
  end

  def new
  end

  def create
  end

  def show
  end

end
