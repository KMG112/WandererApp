
class Path < ApplicationRecord
  has_many :plots, class_name: 'Plot', foreign_key: :path1_id, inverse_of: :path1
  has_many :chapters, through: :plots, foreign_key: 'chapter_id', class_name: 'Chapter'

  
end

