# frozen_string_literal: true

class CreateCreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :create_posts do |t|
      t.string :title
      t.string :text
      t.integer :comments_counter
      t.integer :likes_counter
      t.timestamps
    end
  end
end
