class ConversationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @conversations = current_user.conversations.to_a
    @conversations = @conversations.sort_by { |conversation| - conversation.notifications.where(user: current_user).count}
  end

  def new
    @conversation = Conversation.new
    @conversation.conversation_members.build
  end

  def create
    @conversation = Conversation.new(conversation_params)
    @conversation.conversation_members.new(user: current_user)

    if @conversation.save
      redirect_to conversations_path
    else
      render :new
    end
  end

  def show
    @conversation = Conversation.find(params[:id])
    @message = Message.new
  end

    private

  def conversation_params
    params.require(:conversation).permit(:name, conversation_members_attributes: [:user_id])
  end

end
