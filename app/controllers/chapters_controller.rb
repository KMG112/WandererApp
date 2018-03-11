

class ChaptersController < ApplicationController
	def index
		
		@chapter = Chapter.order("RANDOM()").where(lowest: true).first
	end

	
	def new

		@usedPath = Path.find(params[:path_id])
		@chapter = Chapter.new(pathPrev_id: params[:path_id])
		@last =Chapter.find(params[:chapter_id])
		2.times {@chapter.plots.build.build_path}

	end

	def create

		@usedPath = Path.find(params[:pathPrev_id])
		@usedPath.update(used: true)
		@lastChapter = @usedPath.chapters.first

		if  @lastChapter.paths.where(used: false).count == 0
			@lastChapter.update(lowest: false)
		end

		@chapter = Chapter.new(chapter_params)


		@path1 = Path.new(content: params["chapter"]["plots"]["paths"]["path1content"],)
		@path2 = Path.new(content: params["chapter"]["plots"]["paths"]["path2content"])
		
		

  		if @chapter.save & @path1.save & @path2.save
 			@chapter.pathPrev_id = Path.find(params[:pathPrev_id]).id
			@chapter.update( path1_id: @path1.id, path2_id: @path2.id)
			@chapter.paths << [@path1, @path2]
				
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

	def update
		@chapter = Chapter.find(params[:id])

		if @chapter.update(chapter_params)
            redirect_to action: "show", id: :chapter
        else
           render :action => 'edit'
        end
	end

	def show
		
		@referrer = request.referrer
		if @referrer
			@referrer = @referrer.remove("http://localhost:3000") 
		end
		@chapter = Chapter.find(params[:id])
		@f = @chapter.paths.find( @chapter.path1_id)
		@y = @chapter.paths.find( @chapter.path2_id)
  	end

  	def list
  		@chapters = Chapter.all
  		
  	end

  	def destroy
  		@chapter = Chapter.find(params[:id])
  		@paths = Path.all
  		@paths.find(@chapter.pathPrev_id).update(used: false)
  		@chapter.destroy

  		redirect_to '/list'
  	end

end

private
  def chapter_params
    params.require(:chapter).permit(:id, :name, :lowest, :content, :email, :path1_id, :path2_id,:pathPrev_id, plot_attributes: [:plot_id, path_attributes: [:content, :used]])
  end




  def add_path
   self.product ||= Product.new if self.new_record?
  end




