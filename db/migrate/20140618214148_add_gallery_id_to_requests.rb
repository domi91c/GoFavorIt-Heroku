class AddGalleryIdToRequests < ActiveRecord::Migration
  def change
	  remove_column :requests, :gallery_id, :string

	  add_column :requests, :gallery_id, :integer
  end
end
