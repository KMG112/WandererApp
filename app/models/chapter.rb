class Chapter < ApplicationRecord
  has_many :plots, inverse_of: :chapter
  has_many :path, through: :plots
 	

end

