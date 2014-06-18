class Gallery < ActiveRecord::Base

	attr_accessor :gallery_id

	has_many :pictures, :dependent => :destroy
	belongs_to :request

end
