# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# dave = User.create(username: "dave")
# meal_plan = dave.meal_plans.create(title: "Midde Easter Week")
# day_1 = meal_plan.days.create(number: 1)
# day_2 = meal_plan.days.create(number: 2)
# chicken_recipe = day_1.recipes.create(label: "yummy chicken")
# chicken_recipe.nutrients.create(name: "Calcium")

jess = User.create(username: "jessie")
meal_plan = jess.meal_plans.create(title: "Israeli Week")
day_1 = meal_plan.days.create(number: 1)
day_2 = meal_plan.days.create(number: 2)
fish_recipe = day_1.recipes.create(label: "yummy fish")
fish_recipe.nutrients.create(name: "Iron")

