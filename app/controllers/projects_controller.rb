class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :update, :edit, :destroy]

  def index
    @projects = Project.all
    render json: @projects
  end

  def show
    render json: @project
  end

  def create
    @project = Project.new(project_params)

    if @project
      @project.save
    end
  end

  def edit
    render json: @project
  end

  def update
    @user.update(project_params)
  end

  def destroy
    @project.destroy
  end

  private

  def set_project
    @uproject= Project.find_by_id(params[:id])
  end

  def project_params
    params.require(:project).permit(:name, :image, :description, :project_link, :git_hub, :video, )
  end
end
