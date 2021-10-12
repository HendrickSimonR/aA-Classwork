class ApplicationController < ActionController::Base
#CRRLLL

  def current_user 
    return nil unless session[:session_token]
    @current_user ||= User.find_by(session_token: session[:session_token])
  end 

  def require_logged_in  
    redirect_to new_session_url unless logged_in?
  end  
  
  def require_logged_out
    redirect_to new_session_url if logged_in?
  end 
  
  def log_in_user!(user)
    session[:session_token] = user.reset_session_token!
  end  
  
  def logout
    current_user.reset_session_token!
    session[:session_token] = new_session_url
    @current_user = nil
  end  
  
  def logged_in?
    !!current_user
  end
end 