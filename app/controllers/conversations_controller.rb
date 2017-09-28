class ConversationsController < ApplicationController

  def index
    @conversations = policy_scope(Conversation).order(created_at: :desc)
  end

  def create
    @venue = Venue.find(message_and_conversation_params[:venue_id])
    @owner = @venue.owner

    @conversation = Conversation.find_or_initialize_by(owner: @owner, booker: current_user, venue: @venue)
    authorize @conversation

    @message = Message.new(content: message_and_conversation_params[:content])
    @message.user = current_user
    @message.conversation = @conversation

    if @message.save && @conversation.save
       redirect_to @conversation, notice: "Successfully sent"
    else
       redirect_to @venue, alert: "Couldn't send"
    end
  end

  def destroy
    @conversation = Conversation.find(params[:id])
    @conversation.destroy
  end

  def show
    @conversation = Conversation.find(params[:id])
    @venue = @conversation.venue
    @messages = @conversation.messages
    @message = Message.new
    authorize @conversation
  end

  private

  def message_and_conversation_params
    params.require(:message).permit(:content, :venue_id)
  end

  # def find_venue
  #   @venue = Venue.find(params[:id])
  # end
end
