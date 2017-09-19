class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]

  def index
    @venues = Venue.all
    @venues_with_coordinates = Venue.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@venues_with_coordinates) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      end
   end

  def show

    @booking = Booking.new
    @venue.categories.delete_at(0)
    @venue.amenities.delete_at(0)
    @new_array_categories = @venue.categories
    @new_array_amenities = @venue.amenities
    if @venue.geocoded?
     @hash = Gmaps4rails.build_markers(@venue) do |venue, marker|
        marker.lat venue.latitude
        marker.lng venue.longitude
      end.flatten
    end

  end

  def new
    @profile = current_user.profile
    @venue = Venue.new
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
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
    params.require(:venue).permit(:name, :capacity, :location, :description, :price, :user_id, :photos => [], :categories => [], :amenities => [])
  end
end
