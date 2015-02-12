class Main < ActiveRecord::Base
	has_attached_file :imageattachment
	validates :imageattachment, :attachment_presence => true
	validates_attachment :imageattachment, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
	validates :title, :presence => true
	validates :punktmenu, :presence => true
	
	def slug
		Russian.translit(title).downcase
	end
	
	def to_param
		"#{id}-#{slug}"
	end
	
end
