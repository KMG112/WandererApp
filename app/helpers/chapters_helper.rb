module ChaptersHelper
	def randomized_background_image
	  images = ["01_bkgrnd.jpg", "02_bkgrnd.jpg", "04_bkgrnd.jpg", "05_bkgrnd.jpg", "06_bkgrnd.jpg", "07_bkgrnd.jpg", "08_bkgrnd.jpg", "09_bkgrnd.jpg", "10_bkgrnd.jpg", "11_bkgrnd.jpg", "12_bkgrnd.jpg"]
	  asset_path(images[rand(images.size)])
	end
end
