class AlterAdminUsers < ActiveRecord::Migration
  def up
    rename_column(:admin_users, :name, :first_name)
    add_column(:admin_users, :last_name, :string, :limit => 50)
    add_column(:admin_users, :email, :string, :limit => 100)
    add_column(:admin_users, :username, :string, :limit => 25)
    add_index(:admin_users, :username)
  end

  def down
    remove_index(:admin_users, :username)    
    remove_column(:admin_users, :username)
    remove_column(:admin_users, :email)
    remove_column(:admin_users, :last_name)
    rename_column(:admin_users, :first_name, :name)
  end

end
