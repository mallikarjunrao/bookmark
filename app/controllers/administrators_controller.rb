class AdministratorsController < ApplicationController
  def new
 @administrator=Administrator.new
  end

  def create
 @administrator=Administrator.new(params[:administrator])
  @administrator.save
 redirect_to administrators_path
  end


  def index

  @administrators=Administrator.all
  end

end
