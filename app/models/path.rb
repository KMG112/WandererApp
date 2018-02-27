
class Path < ApplicationRecord
  has_many :plots, class_name: 'Plot', foreign_key: :path1_id, inverse_of: :path

  has_many :chapters, through: :plots, foreign_key: 'chapter_id'
  


  
end


