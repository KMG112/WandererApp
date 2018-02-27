class Plot < ApplicationRecord
  belongs_to :chapter


  belongs_to :path1, class_name: "Path", polymorphic: true, optional: true
  belongs_to :path2, class_name: "Path", polymorphic: true, optional: true



  accepts_nested_attributes_for :chapter, :path1, :path2



end
