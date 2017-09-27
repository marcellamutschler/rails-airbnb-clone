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
      flash[:notice] = 'Thank you for your review!'
    else
      flash[:alert] = "Couldn't leave review!"
    end
    redirect_back(fallback_location: root_path)
  end

  private

  def find_booking
    @booking = Booking.find(params[:booking_id])
  end

  def review_params
    params.require(:review).permit(:review_text, :review_rating)
  end
end
