class WorkoutsController < ApplicationController
  def index
    puts params
    if params[:body_group_id].present?
      # puts "*" * 50
      puts params[:body_group_id]
      @workouts = Workout.includes(:body_groups).where(body_groups: { id: params[:body_group_id] })
    elsif params[:user_id].present?
      @workouts = User.find(params[:user_id]).workouts
    else
      @workouts = Workout.all
      # puts "!" * 50
    end
    render :index
  end

  def show
    @workout = Workout.first
    render :show
  end

  def create
    @workout = Workout.create!(
      user: current_user,
      name: params[:name],
      img: params[:img],
      body_group_id: params[:body_group_id],
      muscle_id: params[:muscle_id],
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

  private

  def workout_params
    params.permit(
      :body_group_id
    )
  end
end
