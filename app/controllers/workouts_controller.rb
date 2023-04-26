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
    @workout = Workout.create(
      img: params[:img],
      body_group: params[:body_group],
      muscle: params[:muscle],
    )
    render :show
  end

  def update
    @workout = Workout.find_by(id: params[:id])
    @workout.update(
      img: params[:img] || @workout.img,
      body_group: params[:body_group] || @workout.body_group,
      muscle: params[:muscle] || @workout.muscle,
    )
    render :show
  end

  def destroy
    @workout = Workout.find_by(id: params[:id])
    @workout.destroy
    render json: { message: "workout destroyed successfully" }
  end
end
