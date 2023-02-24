class CreateCreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :create_likes do |t|

      t.timestamps
    end
  end
end
