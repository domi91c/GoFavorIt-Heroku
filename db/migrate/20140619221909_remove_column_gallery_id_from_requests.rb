class RemoveColumnGalleryIdFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :gallery_id, :integer
  end
end
