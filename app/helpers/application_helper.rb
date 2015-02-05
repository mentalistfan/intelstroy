module ApplicationHelper
	def resize
		if image[:width] &lt; image[:height]
			 remove = ((image[:height] - image[:width])/2).round
			 image.shave("0x#{remove}")
			 elsif image[:width] &gt; image[:height]
			 remove = ((image[:width] - image[:height])/2).round
			 image.shave("#{remove}x0")
			 end
			 image.resize("#{size}x#{size}")
			 return image
	end
	
	def title(page_title)
		content_for :title, page_title.to_s
	end
	
	def asset_host(image_name)
		return "http://localhost:3000/images/"+image_name.to_s
	end
end
