class Chapter < ApplicationRecord
  has_many :plots
  has_many :paths, through: :plot


  # , :source => :path
  # accepts_nested_attributes_for :paths
end

