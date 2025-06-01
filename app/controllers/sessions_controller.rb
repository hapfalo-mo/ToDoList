class SessionsController < ApplicationController
  def new
    #render login form
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to users_path, notice: "Logged in Successfully!!"
    else
      flash.now[:alert] = "Invalid out successfully!"
      render 'new'
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "Loggout Successfully!"
  end
end
