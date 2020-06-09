class Recipe < ApplicationRecord
    has_many :day_recipes
    has_many :days, through: :day_recipes
    has_many :nutrients 

    def self.find_or_create_from_params(recipe)
        self.find_or_create_by(label: recipe[:label], image: recipe[:image], source: recipe[:source], url: recipe[:url])
    end

end
