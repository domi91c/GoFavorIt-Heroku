class Gallery < ActiveRecord::Base
attr_accessor :gallery_id
  has_many :pictures, :dependent => :destroy


end
