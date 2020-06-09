class MealPlan < ApplicationRecord
    belongs_to :user
    has_many :days
    has_many :recipes, through: :days
    has_many :day_recipes, through: :days

    def create_days(total_days)
        count = 1
        while count <= total_days do 
            day = self.days.create(number: count)
            count += 1
        end
    end
end 