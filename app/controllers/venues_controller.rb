class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_reviews, only: [:show]

  # logging in and out

  def index
    @venues = Venue.all
      # si on mettait un raise ici, cela nous donnerait quand meme
      #l'accès à l'élément juste au dessus.
    @venues_with_coordinates = Venue.where.not(latitude: nil, longitude: nil)
    @hash = Gmaps4rails.build_markers(@venues_with_coordinates) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
      end
    @venues = policy_scope(Venue)
   end

  def show

    @hash = [{ lat: @venue.latitude, lng: @venue.longitude }]
    @booking = Booking.new
    @message = Message.new
    @bookmark = Bookmark.new
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
    @venue = Venue.new
    authorize @venue
  end

  def create
    @venue = Venue.new(venue_params)
    @venue.user = current_user
    if @venue.save
      redirect_to venue_path(@venue)
    else
      render :new
    end
    authorize @venue
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

  def find_reviews
    @bookings = @venue.bookings
    @venue_reviews = []
    @bookings.each do |booking|
      @booking_review = booking.review
      unless booking.review.nil?
      @venue_reviews << @booking_review
      end
    end
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
    authorize @venue
  end


  def venue_params

    params.require(:venue).permit(:name, :capacity, :location, :description, :price, :user_id, :photos => [], :categories => [], :amenities => [])

  end
end
