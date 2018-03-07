
class Path < ApplicationRecord
  before_destroy :destroy_paths
  
  has_many :plots
  has_many :chapters, through: :plots, dependent: :destroy


   private

    def destroy_chapters
	    self.chapters.each do |t|
	    t.destroy
    end  

 	end

end

 

