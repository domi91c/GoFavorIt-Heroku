class AddGalleryIdToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :gallery_id, :string
  end
end
