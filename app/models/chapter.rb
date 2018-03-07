class Chapter < ApplicationRecord

	has_many :plots
	has_many :paths, through: :plots, :dependent => :delete_all

 	accepts_nested_attributes_for :plots, :paths
    validates :content      , presence: true
    validates :name         , presence: true



end

