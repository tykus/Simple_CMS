class AdminUsersController < ApplicationController
  
  before_action

  layout "admin"

  def index
    @admin_users = AdminUser.sorted
  end

  def new
    @admin_user = AdminUser.new
  end

  def edit
    @admin_user = AdminUser.find(params[:id])
  end

  def delete
  end

end
