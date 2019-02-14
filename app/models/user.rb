class User < ApplicationRecord
	has_many :posts, dependent: :destroy  
	validates :email, confirmation: true,presence: true,uniqueness: true
	validates :password, length: {minimum: 5}
end
