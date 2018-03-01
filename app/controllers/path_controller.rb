class PathController < ApplicationController
	def index
	end

	def new
		@path = Path.new(path_params)
	end

	def create
		@path = Path.find(params[:path_id])
  		@path.save

	end

	def show
		@path = Path.find(params[:id])
  	end
end
