class Api::V1::MealsController < ApplicationController

	before_action :authorized, only: [:my_meals]

	def create
		 @meal = Meal.new(meal_params)
		 @user = User.find(meal_params[:user_id])
    if @meal.save
      render json: @user.meals
    else
    	render "Error"
    end
  end 

  def index
    meals = Meal.all
    render json: meals
  end

  def my_meals
  	render json: current_user.meals
  end 

	private 

	def meal_params
		params.require(:meal).permit(:name, :date_string, :date_date, :image_url, :total_cal, :total_protein, :total_fat, :total_carbs, :category, :user_id)
	end 

end