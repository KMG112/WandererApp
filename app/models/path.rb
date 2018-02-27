
class Path < ApplicationRecord
  has_many :plots

  has_many :path1s, through: :plot, class_name: 'Path', foreign_key: "path1_id"
  has_many :path2s, through: :plot, class_name: 'Path', foreign_key: "path2_id"

end

