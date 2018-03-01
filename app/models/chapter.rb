class Chapter < ApplicationRecord
	# attr_accessor :path_attributes
	has_many :plots
	has_many :paths, through: :plots

 	accepts_nested_attributes_for :plots, :paths
end

