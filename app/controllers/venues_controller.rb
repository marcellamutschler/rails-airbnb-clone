class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  def index
    @venues = Venue.all
    @venues = Venue.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@venues) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      end
   end

  def show
    @hash = [{ lat: @venue.latitude, lng: @venue.longitude }]
    @booking = Booking.new
  end

  def new
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save!
      redirect_to venue_path(@venue)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @venue.update(venue_params)
    redirect_to venue_path(@venue)
  end

  def destroy
    @venue.destroy!
    redirect_to venues_path
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
  end

  def venue_params
    params.require(:venue).permit(:name, :capacity, :location, :description, :price, :user_id, :photo)
  end
end
