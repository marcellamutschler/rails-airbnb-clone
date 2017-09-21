class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  include Pundit
  # give you a whole new bunch of methods - "include" means include the module
  # int he class, including mainly 'autorize'

  #now that' you're loggind in, can you do this things?

  # Pundit: white-list approach.

  after_action :verify_authorized, except: :index, unless: :skip_pundit?

  # has to be verified afterwards . 1. does it perform 2. is it conformed?
  # you only deal with one item
  # exactly the same as this - after_action(:verify_authorized, { except: :index, unless: :skip_pundit? })
  # method + argument +
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?
  # you deal with all the restaurants


  # Uncomment when you *really understand* Pundit!
  #rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


 # def user_not_authorized
 #  flash[:alert] = "You are not authorized to perform this action."
 #  redirect_to(root_path)
 # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
  # if you are in the device controller --> device is a whole world
  # pundit only works with controllers

  def verify_presence_of_profile
    if current_user.profile.nil?
      redirect_to new_profile_path, alert: 'Please create a profile before proceeding'
    end
  end
end
