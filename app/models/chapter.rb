class Chapter < ApplicationRecord
   has_many :plots

  has_many :path1, through: :plots, foreign_key: 'path_id'
  has_many :path2, through: :plots, foreign_key: 'path_id'

end

