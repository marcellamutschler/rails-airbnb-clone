class BookmarksController < ApplicationController
# before_action :set_venue

  def index
    @bookmark = Bookmark.all
    @bookmark = policy_scope(Bookmark)

    raise
  end

  # def show
  # end

  # def new
  # end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.user = current_user
    authorize @bookmark
    @bookmark.save
    redirect_to
  end

  # def edit
  # end

  def update
    authorize @bookmark
  end

  def destroy
    authorize @bookmark
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:venue_id)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end


end
