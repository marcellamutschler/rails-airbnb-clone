class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :find_venue, only:[:new, :create, :edit, :update]

  def index
    @bookings = current_user.bookings
    @profile = current_user.profile
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
      redirect_to venue_booking_path(@venue, @booking)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(booking_params)
    redirect_to venue_booking_path(@venue)
  end

  def destroy
    @booking.destroy!
    redirect_to venues_path
  end

  private

  def find_venue
    @venue = Venue.find(params[:venue_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:status, :total_price, :user_id, :venue_id)
  end
end
