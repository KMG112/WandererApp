class Chapter < ApplicationRecord
  has_many :plots

  has_many :path1s, through: :plots, foreign_key: 'path1_id'
 	
end

