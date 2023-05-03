class WorkoutMusclesController < ApplicationController
  def index
    @workout_muscles = WorkoutMuscle.all
    render :index
  end

  def show
    @workout_muscle = WorkoutMuscle.first
    render :show
  end
end
