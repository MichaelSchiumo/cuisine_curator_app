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

  def update
    @meal.update(meal_params)
    if @meal.save
      flash[:message] = "Your meal has been updated!"
      redirect_to meal_path(@meal)
    else
      render :edit
    end
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      flash[:message] = "Your meal has been created."
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  private
    def meal_params
      params.require(:meal).permit(:course, :difficulty, :rating, :name, :prep_time, :notes, :ingredients)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end
end
