class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def destroy
    redirect_to "/"
  end

  def owner?
    if current_user.id = @venue.user_id
      return true
    else
      false
    end
  end


  # Venue = model venue mais c'est opas une instance


end





