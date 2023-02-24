class AddUserRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :create_comments, :author, foreign_key: { to_table: :create_users }
  end
end
