module ChaptersHelper

	def randomized_background_image
		images = ["01_bkgrnd.jpg", "02_bkgrnd.jpg", "04_bkgrnd.jpg", "05_bkgrnd.jpg", "06_bkgrnd.jpg", "07_bkgrnd.jpg", "08_bkgrnd.jpg", "09_bkgrnd.jpg", "10_bkgrnd.jpg", "11_bkgrnd.jpg", "12_bkgrnd.jpg"]
		asset_path(images[rand(images.size)])
	end

	def findChapter
		Chapter.find(params[:id])
	end

	def set_pathPrev
		@usedPath = Path.find(params[:path_id])
		@chapter = Chapter.new(pathPrev_id: params[:path_id])
		@last =Chapter.find(params[:chapter_id])
	end

	def updateParentConnection
		@usedPath = Path.find(params[:pathPrev_id])
		@usedPath.update(used: true)
		@lastChapter = @usedPath.chapters.first
	end

	def setVisibleChapters
		if  @lastChapter.paths.where(used: false).count == 0
			@lastChapter.update(lowest: false)
		end
	end

	def chapterSaveCheck
		if @chapter.save & @path1.save & @path2.save
			createChapterChildConnection
			respond_to do |format|
				format.html { redirect_to @chapter, chapter: 'Chapter was successfully created.' }
				format.json { render action: 'show', status: :created, location: @chapter }
			end
		else
			respond_to do |format|
				format.html { render action: 'index' }
				format.json { render json: @chapter.errors, status: :unprocessable_entity }
			end
		end
	end

	def createChapterChildConnection
		@chapter.update( path1_id: @path1.id, path2_id: @path2.id,pathPrev_id: @usedPath.id)
		@chapter.paths << [@path1, @path2]
	end

	def createChapterPathInstances
		@chapter = Chapter.new(chapter_params)
		@path1 = Path.new(content: params["chapter"]["plots"]["paths"]["path1content"])
		@path2 = Path.new(content: params["chapter"]["plots"]["paths"]["path2content"])
	end

	def findAndSetReferer
		@referrer = request.referrer
		if @referrer
			@referrer = @referrer.remove("http://localhost:3000") 
		end
	end

	def findAndSetChapterPaths
		@path1 = @chapter.paths.find( @chapter.path1_id)
		@path2 = @chapter.paths.find( @chapter.path2_id)
	end

	def rollbackUsedParamOnPath
		
		if @chapter
			@prevPath = Path.find(@chapter.pathPrev_id) rescue nil
			if @prevPath
				@prevPath.update(used: false)
			end
		end
	end

	def rollbackVisibleChapter
		if @prevPath && @prevPath.chapters

			@prevPath.chapters.first.update(lowest: true)
		end
	end
end
