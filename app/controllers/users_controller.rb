class UsersController < ApplicationController
    include HomeHelper
    include ProfilesHelper

	def create
	end

	def new
		@new_user = User.new(user_params)
		if @new_user.save && params[:password] == params[:password_confirmation]
			session[:id] = @new_user.id
			flash[:success] = "User signup success !"
            redirect_to edit_url
		else
			flash[:danger] = "User signup failed !"
            redirect_to signup_url
		end
	end

	def user_params
		params.require(:user).permit(:name, :email, :password, :password_confirmation)
	end


end
