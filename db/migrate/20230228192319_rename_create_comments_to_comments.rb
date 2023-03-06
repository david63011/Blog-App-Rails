class RenameCreateCommentsToComments < ActiveRecord::Migration[7.0]
  def change
    rename_table :create_comments, :comments
  end
end
