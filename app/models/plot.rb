class Plot < ApplicationRecord
  belongs_to :chapter, class_name: "Chapter"
  belongs_to :path, class_name: "Path", foreign_key: 'path1_id' 
  
end
