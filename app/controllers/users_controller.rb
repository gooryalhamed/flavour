class UsersController < ApplicationController
	
	def show
		 if session[:user_id]
       		@user=User.find(session[:user_id])
     	else
       		redirect_to("/login")
     	end
	end

	def signup
		@user = User.new
	end
	
	def create
		@user = User.new(user_params)
		if @user.save
			session[:user_id] = @user.id
			render :show
		else
			flash[:notice] = "failed to sign up"
			redirect_to '/signup'
		end
	end
		private
	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end
end