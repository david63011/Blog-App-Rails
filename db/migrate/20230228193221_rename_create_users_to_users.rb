class RenameCreateUsersToUsers < ActiveRecord::Migration[7.0]
  def change
    rename_table :create_users, :users
  end
end
