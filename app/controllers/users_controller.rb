class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to mini-eventbrite!"
      log_in(@user)
      redirect_to @user
    else
      redirect_to root_url
    end        
  end

  def show
    @events = current_user.events
    @attending = current_user.upcoming
    @attended = current_user.past
  end

  def index
    @users = User.all
  end

  private

    def user_params
      params.require(:user).permit(:name, :email)
    end

end
