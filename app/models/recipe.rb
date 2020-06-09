class Recipe < ApplicationRecord
    has_many :day_recipes
    has_many :days, through: :day_recipes
    has_many :nutrients 

    def self.find_or_create_from_params(recipe)
        new_recipe = self.find_or_create_by(label: recipe[:label], image: recipe[:image], source: recipe[:source], url: recipe[:url], yield: recipe[:yield])
        if new_recipe.nutrients.count == 0
            nutrients_array = ["CA", "FE", "MG", "K", "VITA_RAE", "VITC", "VITD", "TOCPHA"]
            nutrients_array.each do |nutrient| 
                name = recipe["totalNutrients"][nutrient]["label"]
                total_amount = recipe["totalNutrients"][nutrient]["quantity"]
                unit = recipe["totalNutrients"][nutrient]["unit"]
                percent_of_daily_value = recipe["totalDaily"][nutrient]["quantity"]
                new_recipe.nutrients.create(name: name, total_amount: total_amount, unit: unit, percent_of_daily_value: percent_of_daily_value)
            end
        end
        new_recipe
    end

end
