class RecipesController < ApplicationController
  before_action :set_recipe, only: :show

  def index
    render json: {
      recipes: Recipe.all.group_by(&:course_type).transform_keys(&:humanize)
    }, status: :ok
  end

  def show
    render json: {
      recipe: @recipe
    }, status: :ok
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end
end
