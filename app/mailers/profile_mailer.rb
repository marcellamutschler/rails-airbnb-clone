class ProfileMailer < ApplicationMailer
  def welcome(profile)
    @profile = profile  # Instance variable => available in view

    mail(to: @profile.user.email, subject: 'Welcome to elvenue')
    # This will render a view in `app/views/profile_mailer`!
  end
end
