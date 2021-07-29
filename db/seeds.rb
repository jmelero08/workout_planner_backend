# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
WorkoutPlan.destroy_all

jose = User.create(name: "Jose", email: "jmelero08@gmail.com", password: "123")

chest = Category.create(name: "Chest")
legs = Category.create(name: "Legs")
back = Category.create(name: "Back")
arms = Category.create(name: "Arms")

WorkoutPlan.create(title: "bench", description: "do 3 sets of 12 reps", image_url: "https://image.shutterstock.com/z/stock-photo-man-during-bench-press-exercise-in-gym-336330497.jpg", category_id: chest.id, user_id: jose.id)


