class Post < ApplicationRecord
	belongs_to :user 
	validates :user, presence: true
	validates :title, uniqueness:true
end
