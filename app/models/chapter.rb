class Chapter < ApplicationRecord
  has_many :plots
  has_many :paths, through: :plots
  has_one :plot, class_name: "Plot"
  has_one :plot, class_name: "Plot"
 
  has_one :path1, class_name: "Path", through: :plot, as: :path1,source_type: "Path"
  has_one :path2, class_name: "Path", through: :plot, as: :path2,source_type: "Path"


end

