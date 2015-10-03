class SessionsController < ApplicationController
  # skip_before_filter :authenticate_user

  def new  #login page
  end

  def create #a session
    user = User.find_by_username(params[:username])
    if user.present? && user.authenticate(params[:password])
      set_user_session(user)
      redirect_to root_path, notice: "Successful log-in"
    else
      flash[:alert] = 'Username or password did not match'
      render :new
    end
  end

  def destroy  #logout
    session[:logged_in_users_id] = nil
    redirect_to root_path, notice = "You have logged out"
  end

  private

  def set_user_session(user)
    session[:logged_in_users_id] = user.id
  end

end
