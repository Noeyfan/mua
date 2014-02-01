class User < ActiveRecord::Base
	has_secure_password
	before_save {email.downcase!}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validate :name, presence: true, length: { maxium: 50}
	validate :email, presence: true, format: {with: VALID_EMAIL_REGEX},
						uniqueness: {case_sensitive: false}
	validate :password, length: {minimum: 6}
	validates_confirmation_of :password, if:lambda {|m| m.password.present? }
end
