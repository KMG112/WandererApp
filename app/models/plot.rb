class Plot < ApplicationRecord
	belongs_to :chapter, optional: true
	belongs_to :path, optional: true


 	accepts_nested_attributes_for :path

end


