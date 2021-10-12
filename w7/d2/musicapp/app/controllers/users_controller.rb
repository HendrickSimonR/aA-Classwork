class UsersController < ApplicationController

  def create 
    @user = User.new(user_params)
    if @user.save 
       log_in_user!(@user)
       redirect_to user_url(@user)  #own page
    else 
       flash.now[:errors] = @user.errors.full_messages
       render :new            #new form/page with errors
    end 
  end
  
  def new
    @user = User.new
    render :new
  end

  def show 
    render :show      
  end 

  # def index 
  #   @user = User.all
  #   render :index 
  # end 

  private
  def user_params 
    params.require(:user).permit(:email, :password)
  end 
end
