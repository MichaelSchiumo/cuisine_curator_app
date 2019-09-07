class MealsController < ApplicationController
  before_action :set_meal, only: [:edit, :show, :update]



  private
    def meal_params
      params.require(:meal).require(:type, :difficulty, :rating, :user_id, :cuisine_id, :name)
    end  
end
