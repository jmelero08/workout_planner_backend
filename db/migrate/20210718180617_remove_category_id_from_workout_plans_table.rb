class RemoveCategoryIdFromWorkoutPlansTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :workout_plans, :category_id, :integer
  end
end
