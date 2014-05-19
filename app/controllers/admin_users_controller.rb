class AdminUsersController < ApplicationController
  
  before_action :confirm_logged_in

  layout "admin"

  def index
    @admin_users = AdminUser.sorted
  end

  def new
    @admin_user = AdminUser.new
  end

  def create
    @admin_user = AdminUser.new(admin_user_params)
    if @admin_user.save
      flash[:notice] = "New admin user created successfully."
      redirect_to(:action => 'index')
    else
      flash[:notice] = "The new admin user was not saved."
      render('new')
    end
  end

  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def update
    @admin_user = AdminUser.find(params[:id])
    if @admin_user.update_attributes(admin_user_params)
      flash[:notice] = "Admin user updated successfully."
      redirect_to(:action => 'index')
    else
      flash[:notice] = "Admin user was not updated."
      render('edit')
    end
  end

  def delete
    @admin_user = AdminUser.find(params[:id])
  end

  def destroy
    AdminUser.find(params[:id]).destroy
    flash[:notice] = "Admin User successfully deleted."
    redirect_to(:action => :index)
  end

  private
    def admin_user_params
      params.require(:admin_user).permit(:email, :first_name, :last_name, :password, :password_confirmation, :username)
    end

end
