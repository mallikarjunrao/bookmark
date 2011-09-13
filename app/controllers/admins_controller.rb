class AdminsController < ApplicationController
  def dashboard

  @administrators=Administrator.all
  @bookmarks =Bookmark.all
@bookmarks=Bookmark.paginate(:page => params[:page], :per_page => 3)
@administrators=Administrator.paginate(:page => params[:page], :per_page => 3)
  end

  

end
