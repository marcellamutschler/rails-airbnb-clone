class Message < ApplicationRecord
  belongs_to :conversation
  belongs_to :user

  validates_presence_of :content, :conversation, :user

end
