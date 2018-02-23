
class Path < ApplicationRecord
  has_many :plots
  has_many :chapters, through: :plots
  # , :source => :chapter
  # accepts_nested_attributes_for :chapters
  # validates_presence_of :chapter
end