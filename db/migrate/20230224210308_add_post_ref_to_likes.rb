# frozen_string_literal: true

class AddPostRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :create_likes, :create_posts, foreign_key: true
  end
end
