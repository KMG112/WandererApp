class Chapter < ApplicationRecord
  has_many :plots





  has_one :plot, class_name: "Path", as: :path1
  has_one :plot, class_name: "Path", as: :path2
 
   has_one :path1, through: :plot, source_type: "Path1", as: :path1
  has_one :path2, through: :plot, source_type: "Path2", as: :path2

end

