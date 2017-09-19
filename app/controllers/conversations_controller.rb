class ConversationsController < ApplicationController
  before_action :

  def index
    @conversations = Conversation.all
  end

  def create

  end

  private

  def conversation_params
    params.permit(:sender_id, :recipient_id)
  end
end
