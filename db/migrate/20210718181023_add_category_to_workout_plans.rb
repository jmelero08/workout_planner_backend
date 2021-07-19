class AddCategoryToWorkoutPlans < ActiveRecord::Migration[6.1]
  def change
    add_reference :workout_plans, :category, null: false, foreign_key: true
  end
end
