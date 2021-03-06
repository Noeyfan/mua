class SessionsController < ApplicationController
	def new
  end

  def create
		user = User.find_by(email: params[:session][:email].downcase)
		if user && user.authenticate(params[:session][:password])
			#redirect
			sign_in user
			redirect_to root_url
		else
			#error
		flash.now[:error] = 'wrong email or password'
		render 'new'
  	end
	end

  def destroy
		sign_out
		redirect_to root_url
  end
end
