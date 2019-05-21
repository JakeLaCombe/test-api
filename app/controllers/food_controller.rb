class FoodController < ApplicationController
  def index
    foods = Food.all 

    render json: foods.to_json
  end

  def show
    food = Food.find(params[:id])
    render json: food.to_json
  end
end
