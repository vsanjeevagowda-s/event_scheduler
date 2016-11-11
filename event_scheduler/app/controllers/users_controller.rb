class UsersController < ApplicationController
	def welcome
		
	end

	def new
		
	end

	def create
		@user=User.new(user_params)
		@user.save
		redirect_to login_path
	end

	private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :username, :email, :phone, :password, :password_confirmation)
	end
end
