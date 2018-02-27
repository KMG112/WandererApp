class Chapter < ApplicationRecord
  has_many :plots


  has_many :path1join, class_name: 'Plot', foreign_key: 'path1_id'
  has_many :path2join, class_name: 'Plot', foreign_key: 'path2_id'
  
  has_many :path1s, through: :path1join, primary_key: "path1_id", :source => "path1"
  has_many :path2s, through: :path2join, primary_key: "path2_id", :source => "path2"

end

