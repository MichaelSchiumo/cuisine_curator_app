class CuisinesController < ApplicationController
  before_action :set_cuisine, only: [:edit, :show, :update]

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(cuisine_params)
    if @cuisine.save
      redirect_to cuisine_path(@cuisine)
    else
      render :new
    end
  end

  def index
    @cuisines = Cuisine.all
  end

  def show
  end

  def edit
  end

  def update
    @cuisine.update(cuisine_params)
    if @cuisine.save
      redirect_to cuisine_path(@cuisine)
    else
      render :edit
    end
  end

  def destroy
    # @cuisine = Cuisine.find_by(id: params[:cuisine_id])
    @cuisine = Cuisine.find(params[:id])
    @cuisine.destroy
    redirect_to cuisines_path(@cuisine)
  end

  private
      def set_cuisine
        @cuisine = Cuisine.find(params[:id])
      end

      def cuisine_params
        params.require(:cuisine).permit(:category, :classification, :cuisine_id)
      end
end
