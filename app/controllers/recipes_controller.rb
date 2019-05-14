class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    render json: {
      recipes: @recipes
    }, status: :ok
  end

  def show
  end
end
