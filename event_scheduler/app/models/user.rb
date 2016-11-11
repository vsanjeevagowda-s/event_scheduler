class User < ActiveRecord::Base

	
	has_many :events, foreign_key: :owner_id

	has_secure_password
end

