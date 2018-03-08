class Chapter < ApplicationRecord
  before_destroy :getrid_children

	has_many :plots, dependent: :destroy
	has_many :paths, through: :plots

 	accepts_nested_attributes_for :plots, :paths
    validates :content      , presence: true
    validates :name         , presence: true


   private

   def getrid_children
    chapterArray = []

    association_loop(self, chapterArray)
    chapterArray.map{|r| r.destroy}
   end

   def association_loop(g, chapterArray)

    g.paths.each do |t|

        if t.chapters.ids[0].present?
          c = Chapter.find_by(pathPrev_id: t.id)     
          chapterArray << t.chapters.first

          if c    
            association_loop(c, chapterArray)
          end
          t.destroy
        end
      end 
     return chapterArray
    end

end

