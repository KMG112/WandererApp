

class ChaptersController < ApplicationController
	def index
		@chapter = Chapter.order("RANDOM()").first
	end

	def new
		@chapter = Chapter.new(chapter_params)
	end

	def create
		@chapter = Chapter.find(params[:chapter_id])
  		@chapter.save

	end

	def show
		@chapter = Chapter.find(params[:id])
  	end
end

private
  def chapter_params
    params.permit(:id, :name, :content, :path1_id, :path2_id)
  end