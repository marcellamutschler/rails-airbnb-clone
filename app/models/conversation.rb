class Conversation < ActiveRecord::Base
 belongs_to :owner, foreign_key: :owner_id, class_name: "User"
 belongs_to :booker, foreign_key: :booker_id, class_name: "User"
 belongs_to :venue

 validates_presence_of :owner, :booker, :venue

 has_many :messages


  def order_all_messages
    messages.order(created_at: :desc)
  end

  def most_recent_message
    order_all_messages.first
  end


end
