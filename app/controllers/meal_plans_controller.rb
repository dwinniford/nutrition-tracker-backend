class MealPlansController < ApplicationController
    def index 
        @meal_plans = MealPlan.all 
        render json: MealPlanSerializer.new(@meal_plans).to_serialized_json
    end

    def create 
        
        @user = User.find_or_create_by(username: "dave")
        @meal_plan = @user.meal_plans.create(title: params[:title])
        @meal_plan.create_days(params[:days], params[:recipes])

        redirect_to meal_plan_path(@meal_plan)
    end

    def show 
        @meal_plan = MealPlan.find(params[:id]) 
        render json: MealPlanSerializer.new(@meal_plan).to_serialized_json
    
    end

    
    
end
