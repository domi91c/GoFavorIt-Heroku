class CreateWalls < ActiveRecord::Migration
  def change
    create_table :walls do |t|
      t.text :bio
      t.integer :user_id

      t.timestamps
    end
  end
end
