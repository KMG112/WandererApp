

class ChaptersController < ApplicationController
	def index
	end

	def new
		@chapter = Chapter.new(params.require(:chapter).permit(:title, :text))
	end

	def create
		@chapter = Chapter.new(@chapter.params)
 
  		@chapter.save
  		redirect_to @chapter
	end
end

private
  def chapter_params
    params.require(:chapter).permit(:name, :content)
  end