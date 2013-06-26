class SessionsController < ApplicationController
  skip_authorization_check


  def new
    redirect_to(current_user, :notice => "You are already logged in") if current_user
  end

  def create
    user = login(params[:user][:email], params[:user][:password], params[:user][:remember_me])
    if user
      redirect_back_or_to home_path, :notice => "Logged in!"
    else
      flash.now.alert = "Email or password was invalid."
      render :new
    end
  end

  def destroy
    logout
    redirect_to root_url(:subdomain => 'www'), :notice => "Logged out!"
  end
end
