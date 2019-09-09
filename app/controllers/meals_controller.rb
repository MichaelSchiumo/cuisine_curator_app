class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :show, :update]

  def new
    @meal = Meal.new(cuisine_id: params[:cuisine_id])
  end

  # def index
  #   @meal = Meal.new
  #   @cuisine = Cuisine.find_by(id: params[:cuisine_id])
  # end

  def index
    if params[:cuisine_id]
      @cuisine = Cuisine.find_by(id: params[:cuisine_id])
      if @cuisine.nil?
        redirect_to cuisines_path, flash[:message] = "Cuisine not Found."
      else
        @meals = @cuisine.meals
      end
    else
      @meals = Meal.all
    end
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
    @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    @meal = @cuisine.meals.build(meal_params)
    # @meal = Meal.create(user_id: params[:user_id], cuisine_id: params[:cuisine_id])
    @meal.save
      # flash[:message] = "Your meal has been created."
      redirect_to cuisine_meals_path(@cuisine)
  end

  private
    def meal_params
      params.require(:meal).permit(:course, :difficulty, :rating, :name, :prep_time, :notes, :ingredients, :cuisine_id)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end
end
