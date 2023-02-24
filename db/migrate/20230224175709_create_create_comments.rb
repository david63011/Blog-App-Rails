# frozen_string_literal: true

class CreateCreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :text
      t.timestamps
    end
  end
end
