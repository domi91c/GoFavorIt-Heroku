class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable


	acts_as_messageable

	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable,
	       :validatable



	validates :username, :uniqueness => {:case_sensitive => false}
	has_many :posts
	has_many :offers
	has_many :requests
	has_one :profile



	def name
		"#{first_name} #{last_name}"
	end

	def mailboxer_email
			email
	end



end
