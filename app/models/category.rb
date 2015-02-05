class Category < ActiveRecord::Base
	
	has_many :posts
	has_many :subcategories, :class_name => "Category", :foreign_key => "parent_id", :dependent => :destroy
	belongs_to :parent_category, :class_name => "Category"

	has_attached_file :image
	validates :image, :attachment_presence => false
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	
	def slug
		Russian.translit(title).downcase.parameterize
	end
	
	def to_param
		"#{id}-#{slug}"
	end
end
