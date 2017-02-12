class RecipesController < ApplicationController

	before_action :find_recipe, only:[:show, :edit, :update, :destroy]
	def index
		@recipes = Recipe.all
	end

	def show
	end

	def new
		@recipe = Recipe.new
		@recipe.ingredients.build 
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			 format.html {redirect_to @recipe, notice: "Recipe was successfully created"}
		else
			render :new
		end
	end

	def edit
	end

	def update
		respond_to do |format|
			if @recipe.update(recipe_params)
				format.html {redirect_to recipe_path}
			else
				render :edit
			end
		end
	end

	def destroy
			@recipe.destroy
			redirect_to recipes_path
	end

	private
	def find_recipe
		@recipe = Recipe.find(params[:id])
	end

	def recipe_params
		params.require(:recipe).permit(:title, :description, :preparation, :category_id, :ingredient_ids => [])
	end

end
