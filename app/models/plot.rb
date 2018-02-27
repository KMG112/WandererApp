class Plot < ApplicationRecord

   belongs_to :path1, class_name: 'Path', inverse_of: :plots
   belongs_to :chapter






end
