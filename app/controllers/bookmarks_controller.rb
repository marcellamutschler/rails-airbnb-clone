class BookmarksController < ApplicationController
# before_action :set_venue

  def index
    @bookmarks = Bookmark.all
    @bookmarks = policy_scope(Bookmark)
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
    redirect_to bookmarks_path(current_user)
  end

  # def edit
  # end

  # def update
  #   authorize @bookmark
  # end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    authorize @bookmark
    @bookmark.destroy
    redirect_to bookmarks_path
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:venue_id)
  end

  def set_venue
    @venue = Venue.find(params[:id])
  end
end
