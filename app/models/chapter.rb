class Chapter < ApplicationRecord
   has_many :plots, class_name: 'Plot', foreign_key: :chapter_id, inverse_of: :chapter
  has_many :path1, through: :plots, foreign_key: 'path1_id', class_name: 'Path'
 
end

