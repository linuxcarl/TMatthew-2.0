class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  before_filter :set_default_menu_item

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def login_required
    unless current_user
      session[:redirect_to] = request.fullpath
      flash[:error] = "Login required to see that page."
      redirect_to login_path
    end
  end

  def set_default_menu_item
    @menu_item = ""
  end

end
