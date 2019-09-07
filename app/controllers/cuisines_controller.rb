class CuisinesController < ApplicationController

  def new
    @cuisine = Cuisine.new
  end

  def index
    @cuisines = Cuisine.all
  end    
end
