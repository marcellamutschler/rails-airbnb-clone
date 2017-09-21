class ReviewsController < ApplicationController
  before_action :find_booking, only:[:new, :create, :edit, :update]

  def index

  end

  def show
  end

  def new
    @review = Review.new
    authorize @booking
  end

  def create
    @review = Review.new(review_params)
    @review.booking = @booking
    @review.user = current_user
    authorize @booking
    if @review.save
      redirect_to venue_path(@booking.venue)
      flash.now[:notice] = 'Thank you for your review!'
    else
      render :new
    end
  end

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  private

  def review_params

    params.require(:review).permit(:review_text, :review_rating)

  end


end
