class AddPostRefToComments < ActiveRecord::Migration[7.0]
  def change
    add_reference :create_comments, :create_posts, foreign_key: true
  end
end
