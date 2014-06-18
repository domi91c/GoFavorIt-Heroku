class AddRequestIdToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :request_id, :integer
    add_column :galleries, :offer_id, :integer

  end
end
