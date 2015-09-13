class Image < ActiveRecord::Base
	belongs_to :post
	validates :name, presence: true
	validates :filename, presence: true
end
