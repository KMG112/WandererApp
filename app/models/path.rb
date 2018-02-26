
class Path < ApplicationRecord
  has_many :plots

  has_one :path1, class_name: "Path", as: :path1
  has_one :path2, class_name: "Path", as: :path2

  has_one :chapter, through: :plot,as: :path1, source_type: "Path1"
  has_one :chapter, through: :plot,as: :path2, source_type: "Path2"
  

  

  
end