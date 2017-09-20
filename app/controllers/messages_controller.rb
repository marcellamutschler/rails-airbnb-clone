class MessagesController < ApplicationController
  def create
    @message = Message.new(message_params)
    @conversation = Conversation.find(params[:conversation_id])
    @message.conversation = @conversation
    @message.user = current_user

    authorize @conversation

    if @message.save
      redirect_to conversation_path(@conversation)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
