class CreateWorkoutPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :workout_plans do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.integer :category_id

      t.timestamps
    end
  end
end
