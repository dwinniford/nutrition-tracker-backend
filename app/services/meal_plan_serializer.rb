class MealPlanSerializer
    def initialize(meal_plan)
        @meal_plan = meal_plan
    end

    def to_serialized_json
        @meal_plan.to_json(
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
end