class BookmarksController < ApplicationController
  def new
  @bookmark=Bookmark.new
  end

  def create

  @bookmark=Bookmark.new(params[:bookmark])

  @bookmark.save
 redirect_to users_path
  end

  def index
@bookmarks=Bookmark.all
@bookmarks=Bookmark.paginate(:page => params[:page], :per_page => 3)
  end

  def edit
  @bookmark=Bookmark.find(params[:id])
  
  end

  def update
  @bookmark=Bookmark.find(params[:id])
  @bookmark.update_attributes(params[:bookmark])
   redirect_to bookmarks_path

  end

  def show
 @bookmark = Bookmark.find(params[:id])
  end

  def destroy
  @bookmark=Bookmark.find(params[:id])
  @bookmark.destroy
  @bookmark.save
  redirect_to bookmarks_path
  
  end

end
