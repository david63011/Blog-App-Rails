class RenameCreatePostsToPosts < ActiveRecord::Migration[7.0]
  def change
    rename_table :create_posts, :posts
  end
end
