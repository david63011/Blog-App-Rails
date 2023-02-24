#create_table 
class CreateCreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :create_comments do |t|
      t.text :text
      t.timestamps
    end
  end
end
