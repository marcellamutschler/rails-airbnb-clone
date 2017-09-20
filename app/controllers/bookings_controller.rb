class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy, :accept, :decline]
  before_action :find_venue, only:[:new, :create, :edit, :update]
  before_action :find_profile, only: [:index, :owner, :accept, :decline]

  def index
    @bookings = policy_scope(Booking)
  end

  def show
  end

  def new
     @booking = Booking.new
  end

  def create

    @booking = Booking.new(booking_params)
    @booking.venue = @venue
    @booking.user = current_user

    @booking.total_price = (params[:booking][:hours]).to_i*@venue.price


    if @venue.save &&  @booking.save
      redirect_to profile_booking_path(@booking.user.profile, @booking)
    else
      render :new
    end
  end

  def edit

  end

  def update
    @profile = current_user.profile
    @booking.update(booking_params)
    redirect_to venue_booking_path(@venue)
  end

  def destroy
    @booking.destroy!
    redirect_to venues_path
  end

  def owner
    @bookings = current_user.bookings
  end

  def accept
    @booking.status = 0
    @booking.save
    redirect_to owner_bookings_profile_bookings_path(@profile)
  end

  def decline
    @booking.status = 1
    @booking.save
    redirect_to owner_bookings_profile_bookings_path(@profile)
  end

  private

  def find_profile
    @profile = current_user.profile
  end

  def find_venue
    @venue = Venue.find(params[:venue_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def booking_params
    params.require(:booking).permit(:status, :total_price, :user_id, :venue_id)
  end
end
