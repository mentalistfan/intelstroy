class Company < ActiveRecord::Base
	has_attached_file :image
	validates :image, :attachment_presence => true
	validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	
	def slug
		Russian.translit(title).downcase.parameterize
	end
	
	def to_param
		"#{id}-#{slug}"
	end
end
