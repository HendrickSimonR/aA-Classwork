class UsersController < ApplicationController
  before_action :require_logged_in, only: [:index, :show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      sign_in(@user)
      redirect_to subs_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end
  
  private 
  def user_params
    params.require(:user).permit(:username, :password)
  end
end
