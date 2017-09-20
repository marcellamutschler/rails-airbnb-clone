module ApplicationHelper
  def convo_partner(conversation)

    if conversation.owner == current_user
      return conversation.booker
    else
      return conversation.owner
    end
  end
end
