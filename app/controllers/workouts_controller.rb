class WorkoutsController < ApplicationController
  def index
    @workout = Workout.first
    render :show
  end
end
