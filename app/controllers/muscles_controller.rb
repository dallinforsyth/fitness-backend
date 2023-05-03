class MusclesController < ApplicationController
  def index
    @muscles = Muscle.all
    render :index
  end

  def show
    @muscle = Muscle.first
    render :show
  end
end
