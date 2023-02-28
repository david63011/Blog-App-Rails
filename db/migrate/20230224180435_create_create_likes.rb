# frozen_string_literal: true

class CreateCreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :create_likes, &:timestamps
  end
end
