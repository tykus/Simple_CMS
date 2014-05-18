class AccessController < ApplicationController
  
  layout "admin"

  def index
    
  end

  def login
  end

  def attempt_login
    
    if params[:username].present? && params[:password].present?
      found_user = AdminUser.where(:username => params[:username]).first
      if found_user
        authorised_user = found_user.authenticate(params[:password])
      end
    end

    if authorised_user
      # mark user as logged in
      flash[:notice] = "You are now logged in"
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Invalid username/password combination"
      redirect_to(:action => 'login')
    end

  end

  def logout
    # mark the user logged out
    flash[:notice] = "Logged out"
    redirect_to(:action => 'login')
  end
end