
require 'chapters_helper.rb'
class ChaptersController < ApplicationController
	
include ChaptersHelper

	def index
		@chapter = Chapter.findRandomChapter
	end

	def new
		set_pathPrev
		2.times {@chapter.plots.build.build_path}
	end

	def create
		updateParentConnection
		setVisibleChapters
		createChapterPathInstances
		chapterSaveCheck
  		
	end


	def show
		@chapter = findChapter
		findAndSetChapterPaths
		findAndSetReferer
  	end

  	def list
  		@chapters = Chapter.all
  		
  	end

  	def destroy
		@chapter = findChapter
  		rollbackUsedParamOnPath
  		rollbackVisibleChapter
  		@chapter.destroy
  		redirect_to '/list'

  	end

end

private

	def chapter_params
		params.require(:chapter).permit(:id, :name, :lowest, :content, :email, :path1_id, :path2_id,:pathPrev_id, plot_attributes: [:plot_id, path_attributes: [:content, :used]])
	end

	