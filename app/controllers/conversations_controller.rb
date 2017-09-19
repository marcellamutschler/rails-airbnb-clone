class ConversationsController < ApplicationController

  def index
    @conversations = Conversation.where("owner_id = ? or booker_id = ?", current_user, current_user)
  end

  def create
    @venue = Venue.find(message_params[:venue_id])
    @owner = @venue.owner

    @conversation = Conversation.new
    @conversation.owner = @owner
    @conversation.booker = current_user
    @conversation.venue = @venue


    @message = Message.new(content: message_params[:content])
    @message.user = current_user
    @message.conversation = @conversation


    if @message.save && @conversation.save
       redirect_to @venue, notice: "Successfully sent"
    else
       redirect_to @venue, alert: "Couldn't send"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :venue_id)
  end
end