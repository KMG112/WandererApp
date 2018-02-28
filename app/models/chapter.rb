class Chapter < ApplicationRecord
	has_many :plots
	has_many :paths, through: :plots
 
end

