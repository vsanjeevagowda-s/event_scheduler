class UsersController < ApplicationController
	before_action :must_login, only: [:show, :edit, :update]

	def welcome
		
	end

	def new
		@user=User.new
	end

	def show
		
	end

	def edit
		@user =User.find(params[:id])
	end

	def create

		@user=User.new(user_params)
		if @user.save
			flash[:success]="User created successfully"
			redirect_to login_path
		else
			# flash[:danger]="Failed to create the user try again"
			
			redirect_to root_path
		end
		
	end

	def update
		@user =User.find(params[:id])
		if @user.update(user_params)
		flash[:success]="User updated successfully"
		redirect_to show_user_path
	else
			flash[:danger]="Failed to update user"

			render 'edit'
	end
	end

	private
	def user_params
		params.require(:user).permit(:firstname, :lastname, :username, :email, :phone, :password, :password_confirmation)
	end
end
