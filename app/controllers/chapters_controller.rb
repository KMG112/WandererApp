

class ChaptersController < ApplicationController
	def index
		
		@chapter = Chapter.order("RANDOM()").first

	end

	
	def new
		@chapter = Chapter.new
		@chapter.plots.build

	end

	def create
		@chapter = Chapter.new(chapter_params)
		@path1 = Path.find(params[:chapter][:plots][:paths][:path1id])
		@path2 = Path.find(params[:chapter][:plots][:paths][:path2id])
		

  		if @chapter.save & @path1.save & @path2.save
 
			@chapter.update(content: params[:chapter][:content], email: params[:chapter][:email],name: params[:chapter][:name])
			@chapter.update(path1_id: @path1.id)
			@chapter.update(path2_id: @path2.id)
			@chapter.paths << @path1
			@chapter.paths << @path2

			@path1.update(content: params["chapter"]["plots"]["paths"]["path1content"])
			@path2.update(content: params["chapter"]["plots"]["paths"]["path2content"])
			
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

		@chapter = Chapter.find(params[:id])
		
  	end
end

private
  def chapter_params
    params.require(:chapter).permit(:id, :name, :content, :email, :path1_id, :path2_id,:pathPrev_id, plot_attributes: [:plot_id, path_attributes: [:content]])
  end