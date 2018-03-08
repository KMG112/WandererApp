
class Path < ApplicationRecord

  
  has_many :plots, dependent: :destroy
  has_many :chapters, through: :plots



end

 

