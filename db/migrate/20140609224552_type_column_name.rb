class TypeColumnName < ActiveRecord::Migration
  def change
	  rename_column :requests, :type, :favortype

  end
end
