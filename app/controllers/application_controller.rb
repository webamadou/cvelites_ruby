class ApplicationController < ActionController::Base

  helper_method :current_user
  add_flash_types :success, :danger
  def current_user
    #return nil
    if session[:user_id]
      @current_user ||= Admin::User.find(session[:user_id])
    else
      @current_user = nil
    end
  end
end
