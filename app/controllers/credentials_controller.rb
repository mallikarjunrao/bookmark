class CredentialsController < ApplicationController
  def new
 @credential=Credential.new
  end

  def create
 @credential=Credential.new(params[:credential])
 @credential.save
  redirect_to credentials_path
  end

  def index
@credentials=Credential.all
  end

end
