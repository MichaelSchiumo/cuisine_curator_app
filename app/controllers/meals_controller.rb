class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :show, :update]
  before_action :set_cuisine, only: [:new, :index, :scoped_index, :show, :create, :destroy]

  def new
    @meal = Meal.new(cuisine_id: params[:cuisine_id])
    # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
  end

  # def index
  #   @meal = Meal.new
  #   @cuisine = Cuisine.find_by(id: params[:cuisine_id])
  # end

  def index
    if params[:cuisine_id]
      # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
      if @cuisine.nil?
        redirect_to cuisines_path, flash[:message] = "Cuisine not Found."
      else
        @meals = @cuisine.meals
      end
    else
      @meals = Meal.all
    end
  end

  def scoped_index
    # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    @meals = Meal.search_by_rating(params[:rating].to_i)
    render :index
  end

  def scoped_index2
    @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    @meals = Meal.for_dinner
    render :index
  end

  def show
    # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
  end

  def edit
  end

  def update
    @cuisine = Cuisine.find_by(id: params[:meal][:cuisine_id])
    if current_user.meals.include?(@meal)

    @meal.update(meal_params)
    end
    if @meal.save
      redirect_to cuisine_meal_path(@cuisine, @meal)
    else
      render :edit
    end
  end

  def create
    # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    @meal = @cuisine.meals.build(meal_params)
    # @meal = Meal.create(user_id: params[:user_id], cuisine_id: params[:cuisine_id])
    if @meal.save
      # flash[:message] = "Your meal has been created."
      redirect_to cuisine_meals_path(@cuisine)
    else
      #error message
      render :new
    end
  end

  def destroy
    # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    @meal = Meal.find(params[:id])
    @meal.destroy
    redirect_to cuisine_meals_path(@cuisine)
  end

  private
    def meal_params
      params.require(:meal).permit(:course, :difficulty, :rating, :name, :prep_time, :notes, :ingredients, :cuisine_id, :user_id, :description)
    end

    def set_meal
      @meal = Meal.find(params[:id])
    end

    def set_cuisine
      @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    end
end
