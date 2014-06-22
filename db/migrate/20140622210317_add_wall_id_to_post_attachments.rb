class AddWallIdToPostAttachments < ActiveRecord::Migration
  def change
    add_column :post_attachments, :wall_id, :integer
  end
end
