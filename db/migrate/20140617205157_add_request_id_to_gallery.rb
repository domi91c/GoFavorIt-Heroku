class AddRequestIdToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :request_id, :integer
    add_column :galleries, :offer_id, :integer

	  remove_column :requests, :gallery_id, :string
  end
end
