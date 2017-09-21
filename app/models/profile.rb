class Profile < ApplicationRecord
  belongs_to :user
  validates :first_name, presence: true
  validates :last_name, presence: true
  has_attachment :photo
  after_create :send_welcome_email


  private

  def send_welcome_email
    ProfileMailer.welcome(self).deliver_now
  end

end
