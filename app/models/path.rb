
class Path < ApplicationRecord
  has_many :plots
  

  has_one :plot, class_name: "Plot", as: :path1
  has_one :plot, class_name: "Plot", as: :path2

  has_many :chapters, through: :plot, as: :path1, source_type:  "Chapter"
  has_many :chapters, through: :plot, as: :path2, source_type: "Chapter"
  
  has_many :chapters, through: :plot

  
end