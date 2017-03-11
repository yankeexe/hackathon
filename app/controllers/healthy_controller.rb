class HealthyController < ApplicationController
	def index
		@health = Health.all
	end
    

	def create
		@health = Health.create(health_params)
		redirect_to healthy_index_path
		
	end

	def edit 
		@health = Health.find(parmas[:id])
	end

	def update
		@health = Health.find(params[:id])
		if @health.update(health_params)
			redirect_to root_path
		else
			redirect_to edit_health_path
		end
	end

	def show 
		@health =  Health.find(params[:id])
	end

	private
	def health_params
		params.require(:health).permit(:title, :description, :required_amount, :donated_amount)
	end
end

