class CreateFavorSelects < ActiveRecord::Migration
  def change
    create_table :favor_selects do |t|
      t.string :favorselect

      t.timestamps
    end
  end
end
