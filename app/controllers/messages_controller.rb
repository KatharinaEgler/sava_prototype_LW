class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = Message.new(message_params)
    @message.conversation = @conversation
    @message.user = current_user
    @message.save

    # if @message.save
      # redirect_to conversation_path(@conversation)
    # else
      # render "conversations/show"
    # end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
