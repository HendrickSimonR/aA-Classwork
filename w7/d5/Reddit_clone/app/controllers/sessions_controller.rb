class SessionsController < ApplicationController
  before_action :require_logged_in, only: [:destroy]

  def new 
    render :new
  end 

  def create 
    @user = User.find_by(
      params[:user][:username],
      params[:user][:password]
    )

    if @user 
      login(@user)
      redirect_to users_url
    else 
      flash.now[:errors] = ['Invalid Username or Password']
      render :new 
    end 
  end 

  def destroy
    logout
    redirect_to new_session_url
  end 
end
