class LoginController < ApplicationController
  def new
    @administrator = Administrator.new
  end

def create
 
   @administrator = Administrator.new(params[:administrator])
 puts "###################################################",params
   @admin = Administrator.find_by_username_and_password(@administrator.username,@administrator.password)
   if @admin
    session[:admin] = @admin.id
    flash[:notice] = "Logged in Successfully"
  if @administrator.role=="admin"
    redirect_to admins_dashboard_path
   else 
    redirect_to users_path
end

   else

    flash[:error] = "Failed to login"
    redirect_to login_new_path
   end
  end


  def logout
   render :layout => false
   session[:admin] = nil if session[:admin]
   redirect_to login_new_path
  end
end
