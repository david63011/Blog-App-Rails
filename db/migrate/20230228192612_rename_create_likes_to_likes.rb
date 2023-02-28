class RenameCreateLikesToLikes < ActiveRecord::Migration[7.0]
  def change
    rename_table :create_likes, :likes
  end
end
