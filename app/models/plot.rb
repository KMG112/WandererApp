class Plot < ApplicationRecord
  belongs_to :chapter, class_name: "Chapter", inverse_of: :plots
  belongs_to :path, class_name: "Path", inverse_of: :plots
  # belongs_to :path2, class_name: "Path", inverse_of: :plots
  # belongs_to :pathPrev, class_name: "Path", inverse_of: :plots

  accepts_nested_attributes_for :chapter
  accepts_nested_attributes_for :path
  # accepts_nested_attributes_for :path2

  # accepts_nested_attributes_for :pathPrev

end
