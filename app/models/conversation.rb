class Conversation < ApplicationRecord
 belongs_to :owner, foreign_key: :owner_id, class_name: "User"
 belongs_to :booker, foreign_key: :booker_id, class_name: "User"
 belongs_to :venue

 validates_presence_of :owner, :booker, :venue

 has_many :messages

end
