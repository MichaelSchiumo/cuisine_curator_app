class CuisinesController < ApplicationController
  before_action :set_cuisine, only: [:edit, :show, :update]

  def new
    @cuisine = Cuisine.new
  end

  def index
    @cuisines = Cuisine.all
  end

  private
      def set_cuisine
        @cuisine = Cusine.find(params[:id])
      end
end
