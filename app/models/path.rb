
class Path < ApplicationRecord
  before_destroy :destroy_chapters
  
  has_many :plots
  has_many :chapters, through: :plots, dependent: :destroy



end

 

