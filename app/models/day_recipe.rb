class DayRecipe < ApplicationRecord
    belongs_to :recipe 
    belongs_to :day
end
