class FoodsController < ApplicationController
	def index
		@food = Food.all
	end
    

	def create
		@food = Food.create(health_params)
		redirect_to healthy_index_path
		
	end

	def edit 
		@food = Food.find(parmas[:id])
	end

	def update
		@food = Food.find(params[:id])
		if @food.update(health_params)
			redirect_to root_path
		else
			redirect_to edit_health_path
		end
	end

	def show 
		@food =  Food.find(params[:id])
	end

	private
	def health_params
		params.require(:food).permit(:title, :description, :required_amount, :donated_amount)
	end
end
