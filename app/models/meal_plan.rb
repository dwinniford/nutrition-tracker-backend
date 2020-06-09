class MealPlan < ApplicationRecord
    belongs_to :user
    has_many :days
    has_many :recipes, through: :days
    has_many :day_recipes, through: :days

    def create_days(total_days, recipes)
        count = 1
        while count <= total_days do 
            day = self.days.create(number: count)
            current_day_recipes = recipes.select { |r| r[:days].include?(day.number.to_s)}
            current_day_recipes.each do |r| 
                recipe = Recipe.find_or_create_by(label: r[:label], image: r[:image], source: r[:source], url: r[:url])
                day.recipes << recipe 
            end 
            day.save 
            count += 1
        end
    end
end 