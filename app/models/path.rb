
class Path < ApplicationRecord
  validates :p_type, numericality: { less_than: 3 }
  has_many :plots, inverse_of: :path
  has_many :chapters, through: :plots

  
end