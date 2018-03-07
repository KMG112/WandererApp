class Chapter < ApplicationRecord
  before_destroy :destroy_paths

	has_many :plots
	has_many :paths, through: :plots, dependent: :destroy

 	accepts_nested_attributes_for :plots, :paths
    validates :content      , presence: true
    validates :name         , presence: true

  after_destroy
   private

   def destroy_paths
   
     self.paths.each do |t|
     	t.destroy
     end  

	
   end

end

