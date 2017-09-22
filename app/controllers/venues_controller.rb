class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_reviews, only: [:show]
  before_action :find_reviews_average, only: [:show]
  before_action :verify_presence_of_profile, only: [:new, :create]

  # logging in and out

  def index
    raise
    @venues = Venue.where("city = ? AND ? = ANY(categories)", params["city"],params["categories"])
    @city = params["city"]
    @categ = params["categories"]
      # si on mettait un raise ici, cela nous donnerait quand meme
      #l'accès à l'élément juste au dessus.
    @venues_with_coordinates = @venues.where.not(latitude: nil, longitude: nil)
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
    redirect_to profile_myvenues_path(current_user)
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

  def find_reviews_average
    sum = 0
    @venue_reviews.each do |review|
      sum = sum += review.review_rating
    end
    @average_rating = sum /= @venue_reviews.length.to_f
  end

  private

  def set_venue
    @venue = Venue.find(params[:id])
    authorize @venue
  end


  def venue_params

    params.require(:venue).permit(:name, :capacity, :location, :description, :price, :user_id, :city, :photos => [], :categories => [], :amenities => [])

  end
end
