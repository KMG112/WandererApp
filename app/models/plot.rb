class Plot < ApplicationRecord

   belongs_to :chapter	

   belongs_to :path1, class_name: 'Path', foreign_key: 'path1_id'
   belongs_to :path2, class_name: 'Path', foreign_key: 'path2_id'








end


