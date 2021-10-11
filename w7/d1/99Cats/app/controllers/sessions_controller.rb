class SessionsController < ApplicationController
  before_action :require_logged_in, only:[:destroy]
  before_action :require_logged_out, only:[:new, :create]

  def new 
    #look up the user's account by username
    #verify that it is their password
    render :new 
  end 

  def create 
    @user = User.find_by_credentials(
      params[:user][:username],
      params[:user][:password]      
    ) 

    if @user
      login(@user)
      redirect_to cats_url
    else  
      render json: ["Invalid Username or Password"]
    end 
  end

  def destroy
    @current_user.reset_session_token! 
    session[:session_token] = nil
  end 

end
