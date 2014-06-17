class AddTokenToOffer < ActiveRecord::Migration
  def change
    add_column :offers, :token, :string
  end
end
