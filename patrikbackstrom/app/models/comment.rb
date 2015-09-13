class Comment < ActiveRecord::Base
	belongs_to :post
	validates :user, presence: true
	validates :text, presence: true
end
