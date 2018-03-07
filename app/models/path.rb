
class Path < ApplicationRecord

  
  has_many :plots
  has_many :chapters, through: :plots, dependent: :destroy



end

 

