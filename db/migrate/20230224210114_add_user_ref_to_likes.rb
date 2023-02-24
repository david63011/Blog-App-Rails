# frozen_string_literal: true

class AddUserRefToLikes < ActiveRecord::Migration[7.0]
  def change
    add_reference :create_likes, :author, foreign_key: { to_table: :create_users }
  end
end
