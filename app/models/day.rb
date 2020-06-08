class Day < ApplicationRecord
    belongs_to :meal_plan
    has_many :day_recipes
    has_many :recipes, through: :day_recipes
end
