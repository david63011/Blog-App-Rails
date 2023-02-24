# frozen_string_literal: true

class AddUserRefToPosts < ActiveRecord::Migration[7.0]
  def change
    add_reference :create_posts, :author, foreign_key: { to_table: :create_users }
  end
end
