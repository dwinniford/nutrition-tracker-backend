class MealPlansController < ApplicationController
    def index 
        @meal_plans = MealPlan.all 
        render json: @meal_plans, include: [:days, :recipes, :day_recipes] 
    end
end
