class Chapter < ApplicationRecord

	has_many :plots
	has_many :paths, through: :plots

 	accepts_nested_attributes_for :plots, :paths
    validates :content      , presence: true
    validates :name         , presence: true



end

