class SessionsController < ApplicationController
	

  def new
  end

  def create
  	user = User.find_by(email: params[:login][:email] )

    
  	if user && user.authenticate(params[:login][:password])
      session[:user_id]=user.id
      flash[:success]="welcome #{current_user.firstname} #{current_user.lastname}  "
      redirect_to list_events_path(current_user)
  	else
      flash[:danger]="email or password is incorrect"
     
      redirect_to root_path
  	end
  end

  def destroy
     session[:user_id]=nil
     flash[:success]="Logged out! "
     redirect_to root_path
  end
end
