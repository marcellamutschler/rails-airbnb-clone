class VenuesController < ApplicationController
  before_action :set_venue, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_reviews, only: [:show]
  before_action :verify_presence_of_profile, only: [:new, :create]

  # logging in and out

  def index

    if params["capacity"] && params["price"]
      @venues = policy_scope(Venue).where("city = ? AND ? = ANY(categories) AND price <= ? AND capacity >= ?", params["city"], params["categories"],  params["price"],  params["capacity"])
    elsif params["city"] && params["categories"]
      @venues = policy_scope(Venue).where("city = ? AND ? = ANY(categories)", params["city"], params["categories"])
    else
      @venues = policy_scope(Venue)
    end

    # si on mettait un raise ici, cela nous donnerait quand meme
    #l'accès à l'élément juste au dessus.

    @city = params["city"]
    @categ = params["categories"]
    @capacity = params["capacity"]
    @price = params["price"]

    @venues_with_coordinates = @venues.where.not(latitude: nil, longitude: nil)
    @venues_with_coordinates = @venues_with_coordinates.sort { |a,b| a.price <=> b.price }

      # si on mettait un raise ici, cela nous donnerait quand meme
      #l'accès à l'élément juste au dessus.


    @hash = Gmaps4rails.build_markers(@venues_with_coordinates) do |venue, marker|
      marker.lat venue.latitude
      marker.lng venue.longitude
    end
    @bookmark = Bookmark.new
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
    authorize @venue
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
    redirect_to profile_myvenues_path(current_user)
  end

  private

  def find_reviews
    @venue_reviews = Review.where(booking_id: Booking.where(venue_id: @venue.id))
    sum = 0
    @venue_reviews.each do |review|
      sum += review.review_rating
    end
    sum /= @venue_reviews.length.to_f
    @average_rating = sum
  end

  def set_venue
    @venue = Venue.find(params[:id])
    authorize @venue
  end

  def venue_params


    params.require(:venue).permit(:name, :capacity, :location, :description, :price, :user_id, :city, :categories => [], :amenities => [], :photos => [])

  end
end
