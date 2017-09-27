
# NB : on n'a pas besoin de générer un Controller pour Users car le
# gem 'Device' le fait pour nous secretement.
# il définit les méthodes sign_up / sign_in  / new session
# pour le voir on peut taper la commande line suivante dans le terminal :
# rails generate devise:controllers users


# tester le URL = profile --> User ID

class ProfilesController < ApplicationController

  before_action :set_profile, only: [:show, :edit, :update, :destroy]


   def show
    # current_user # will return the user that is logged in
   # @user = User.find(params[:user_id])
   # current_user
    # @user = current_user  # = User.find(session:[user_id]
    # a profile belongs to a user : looking for a user through a user_id
    # quesry into the USer table -> give me the ID
    # = this  ID
    # @profile = Profile.find(user_id: current_user.id)
    # @profile = Profile.find(user_id: current_user.id)
    # since a profil belogns to a user, i am looking for the profil
    # that belongs to the user with this specific ID
    # query into the profile table, through user ID
    # profl belongs to this profile
    @bookings = current_user.bookings
    @venue = Venue.new
   end

  def new
     @profile = Profile.new
     authorize @profile
  end

  def create
   # current_user
     # table User in the database User.new / .find is waiting a value  = get my the value of
     # user ID - it awzits the matching value
     @profile = Profile.new(profile_params)
     @profile.user = current_user
     authorize @profile

     # you assign the profile to the user its belongs.

    if @profile.save
     redirect_to profile_path(@profile)
    else
     #du current user = id
      render :new
      # si le saving ne marche pas, continue de renviger
    end
  end

  def edit

  end

  def update

  #profile = Profile.find(params[:id]) # we have it
  #profile.update(profile_params)
  #you assign the profile to the user its belongs.
  #redirect_to profile_path(@profile)
    #   @profile = Profile.find(params[:id]) we have it
     if @profile.update(profile_params)

     # you assign the profile to the user its belongs.
     redirect_to profile_path(@profile)
    end
  end

  def myvenues
    @profile = current_user.profile
    authorize @profile
    @venue = Venue.new
  end

  def destroy
    @profile.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_profile
    @profile = Profile.find(params[:id])
    authorize @profile
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :bio, :photo)
  end


#update info mit form
#update photo
# show all
# show my flats

# formulaire avec nested, ça veut dire 1ere étapge enclenche auto la 2e.

end
