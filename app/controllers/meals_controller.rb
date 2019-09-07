class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :show, :update]

  def new
    @meal = Meal.new
  end

  def index
    @meals = Meal.all
  end

  def show
  end

  def edit
  end        

  private
    def meal_params
      params.require(:meal).require(:type, :difficulty, :rating, :user_id, :cuisine_id, :name, :prep_time, :notes, :ingredients)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end
end
