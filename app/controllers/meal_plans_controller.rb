class MealPlansController < ApplicationController
    def index 
        @meal_plans = MealPlan.all 
        render json: @meal_plans, only: [:id, :title, :user_id], include: [:days, :recipes, :day_recipes] 
    end

    def create 
        
        @user = User.find_by(username: "dave")
        @meal_plan = @user.meal_plans.create(title: params[:title])
        @meal_plan.create_days(params[:days], params[:recipes])

        redirect_to meal_plan_path(@meal_plan)
    end

    def show 
        @meal_plan = MealPlan.find(params[:id])
        # render json: @meal_plan, only: [:id, :title, :user_id], include: [:days, :day_recipes, :recipes, :nutrients]
        render json: @meal_plan.to_json(
            only: [:id, :title, :user_id],
            include: [
                days: {
                    except: [:created_at, :updated_at],
                    include: [
                        recipes: {include: 
                            [nutrients: {except: [:created_at, :updated_at]}], 
                            except: [:created_at, :updated_at]
                        }
                    ]
                } 
            ]
        )  
    
    end

    private 
    
end
