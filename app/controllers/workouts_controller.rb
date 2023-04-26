class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
    render :index
  end

  def show
    @workout = Workout.first
    render :show
  end

  def create
    @photo = Workout.create(
      img: params[:img],
      body_group: params[:body_group],
      muscle: params[:muscle],
    )
    render :show
  end
end
