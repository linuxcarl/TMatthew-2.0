class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.where(email: params[:email]).first
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to session[:redirect_to] || root_path
    else
      flash[:error] = "Authentication failed."
      render action: 'new'
    end
  end

  def destroy
    reset_session
    redirect_to root_path
  end

end