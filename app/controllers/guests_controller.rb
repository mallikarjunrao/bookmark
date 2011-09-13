class GuestsController < ApplicationController
  def dashboard
@bookmarks=Bookmark.all
@bookmarks=Bookmark.paginate(:page => params[:page], :per_page => 3)
@administrators=Administrator.limit(3)
  end
  

  def index

  @bookmarks=Bookmark.all
@bookmarks=Bookmark.paginate(:page => params[:page], :per_page => 3)
@administrators=Administrator.limit(3)
  end

  def view_all

  @bookmarkss=Bookmark.all
@bookmarkss=Bookmark.paginate(:page => params[:page], :per_page => 3)
  end

end
