class AdminUsersController < ApplicationController
  
  before_action

  layout "admin"

  def index
    @admin_users = AdminUser.sorted
  end

  def new
  end

  def edit
  end

  def delete
  end

end
