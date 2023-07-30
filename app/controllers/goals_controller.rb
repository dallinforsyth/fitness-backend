class GoalsController < ApplicationController
  def create
    goal = Goal.new(goal_params)

    if goal.save
      render json: goal, status: :created
    else
      render json: { errors: goal.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def goal_params
    params.require(:goal).permit(:title, :description, :target_date)
  end
end
