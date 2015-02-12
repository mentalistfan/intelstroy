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

	def description(page_description)
		content_for :description, page_description.to_s
	end

	def keywords(page_keywords)
		content_for :keywords, page_keywords.to_s
	end
	
	def asset_host(image_name)
		return "http://localhost:3000/images/"+image_name.to_s
	end

	def about_menu_punkt
		@about_punkt = Company.all.first
		@about_punkt.menupunkt
	end

	def news_menu_punkt
		@news_punkt = Category.find(1)
		@news_punkt.punktmenu
	end

	def projects_menu_punkt
		@projects_punkt = Category.find(2)
		@projects_punkt.punktmenu
	end

	def servs_menu_punkt
		@servs_punkt = Category.find(4)
		@servs_punkt.punktmenu
	end

	def contact_menu_punkt
		@contact_punkt = Companycontact.all.first
		@contact_punkt.punktmenu
	end

	def create_servs_menu
		servs = @servs

		menu = ""

		servs.each do |serv|
			menu += "<li><a href='/services/#{serv.id}-#{serv.slug}'>#{serv.punktmenu}</a></li>"
		end
		raw menu
	end

	def item_parent(parent_p)
		@parent_p = parent_p.to_i
		unless  @parent_p == 0
			@p = Category.find(parent_p)
			return @p.title
		end
	end
end
