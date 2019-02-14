class User < ApplicationRecord
	has_many :posts
	validates :email, confirmation: true,presence: true
	validates :password, length: {minimum: 5}
end
