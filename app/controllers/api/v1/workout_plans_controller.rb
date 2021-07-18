class Api::V1::WorkoutPlansController < ApplicationController

    def index
        workout_plans = WorkoutPlan.all 
        #render json: workout_plans
        render json: WorkoutPlanSerializer.new(workout_plans)
    end

    def create
        workout_plan = WorkoutPlan.new(workout_plan_params)
        if workout_plan.save
            render json: workout_plan, status: :accepted
        else
            render json: {errors: workout_plan.errors.full_messages}, status: :unprocessible_entity
        end
    end

    private

    def workout_plan_params
        params.require(:workout_plan).permit(:title, :description, :image_url, :category_id)
    end
end
