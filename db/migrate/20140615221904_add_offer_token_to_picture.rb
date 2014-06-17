class AddOfferTokenToPicture < ActiveRecord::Migration
  def change
    add_column :pictures, :offer_token, :string
  end
end
