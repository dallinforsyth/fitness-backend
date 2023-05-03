class BodyGroupsController < ApplicationController
  def index
    @body_groups = BodyGroup.all
    render :index
  end

  def show
    @body_group = BodyGroup.first
    render :show
  end
end
