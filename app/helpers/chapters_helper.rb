module ChaptersHelper
	def randomized_background_image
	  images = ["01_bkgrnd.jpg", "02_bkgrnd.jpg", "03_bkgrnd.jpg"]
	  asset_path(images[rand(images.size)])
	end
end
