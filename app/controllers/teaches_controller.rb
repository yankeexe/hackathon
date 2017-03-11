class TeachesController < ApplicationController
	def index
		@teach = Teach.all
	end
    

	def create
		@teach = Teach.create(health_params)
		redirect_to healthy_index_path
		
	end

	def edit 
		@teach = Teach.find(parmas[:id])
	end

	def update
		@teach = Teach.find(params[:id])
		if @teach.update(health_params)
			redirect_to root_path
		else
			redirect_to edit_health_path
		end
	end

	def show 
		@teach =  Teach.find(params[:id])
	end

	private
	def health_params
		params.require(:teach).permit(:title, :description, :required_amount, :donated_amount)
	end

end
