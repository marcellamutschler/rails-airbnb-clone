class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :find_venue, only:[:index, :show, :new, :create, :edit, :update, :destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    new_booking = Booking.new(venue_params)
    @booking.venue = @venue
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @booking.update(venue_params)
    redirect_to venue_path(@booking)
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

  def venue_params
    params.require(:booking).params(:capacity, :location, :description, :price)
  end
end
