class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_many :images, dependent: :destroy
	validates :title, presence: true
	validates :text, presence: true
	validates :author, presence: true

	accepts_nested_attributes_for :images,
								reject_if: proc { |attributes| attributes["filename"].blank? },
                                allow_destroy: true
    accepts_nested_attributes_for :comments

    def is_published?
    	published
    end

    def created_at_pretty
    	created_at.strftime("<strong>%Y-%m-%d</strong>").html_safe
    end
end
