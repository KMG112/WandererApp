class Plot < ApplicationRecord
  belongs_to :chapter
  belongs_to :path1, class_name: "Path"
  belongs_to :path2, class_name: "Path"
  belongs_to :pathPrev, class_name: "Path"

  # accepts_nested_attributes_for :path
  # accepts_nested_attributes_for :chapter
end
