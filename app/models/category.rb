class Category < ApplicationRecord
    has_many :workout_plans, dependent: :destroy 
end
