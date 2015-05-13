class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(name: params[:session][:name].downcase)
    if user
      flash[:success] = "logged in!"
      log_in user
      redirect_to root_url
    else
      flash[:warning] = "incorrect login"
      redirect_to root_url
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end
