class ApplicationMailer < ActionMailer::Base
  default from: 'celia.mutschler@web.de'
  layout 'mailer'
  def welcome(user)
    @user = user
    @profile = @user.profile
    @greeting = "Thank You For Signing Up to elvenue"

    mail(to: @user.email, subject: 'welcome to elvenue')
  end
end
