class CreatePictures < ActiveRecord::Migration
	def change
		create_table :pictures do |t|
			t.string :description
			t.string :image
			t.integer :request_id
			t.integer :offer_id

			t.timestamps
		end
	end
end
