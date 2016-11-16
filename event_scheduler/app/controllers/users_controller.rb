class UsersController < ApplicationController
	def welcome
		
	end

	def new
		@user=User.new
	end

	def show
		
	end

	def create
		# binding.pry
		@user=User.new(user_params)
		if @user.save
			flash[:success]="User created successfully"
			redirect_to login_path
		else
			flash[:danger]="Failed to create the user try again"
		
			redirect_to root_path
		end
		
	end

	private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :username, :email, :phone, :password, :password_confirmation)
	end
end
