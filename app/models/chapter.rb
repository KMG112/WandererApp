class Chapter < ApplicationRecord
  has_many :plots
  has_many :path, through: :plots
 
end

