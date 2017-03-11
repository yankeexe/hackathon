class CategoriesController < ApplicationController
	def index
	end

	def new
	 @category =  Category.new 
	end

	def create
		@category = Category.create(category_params)
		redirect_to root_path
	end
	 	
	 end
	 private
	 def category_params
	 	params.require(category).permit(:title, :description)	
	 end
	

