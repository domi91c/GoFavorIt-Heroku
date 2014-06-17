class RemoveImageFromPictures < ActiveRecord::Migration
  def change
    remove_column :pictures, :image, :string
    remove_column :pictures, :offer_id, :integer
    remove_column :pictures, :request_id, :integer
    remove_column :pictures, :gallery_token, :string

  end
end
