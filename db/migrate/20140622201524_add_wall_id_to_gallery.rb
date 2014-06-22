class AddWallIdToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :wall_id, :integer
  end
end
