class MealPlan < ApplicationRecord
    belongs_to :user
    has_many :days
    has_many :recipes, through: :days
    has_many :day_recipes, through: :days
end 