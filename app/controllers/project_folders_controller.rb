class ProjectFoldersController < ApplicationController
  before_action :set_project_folder, only: [:show, :update, :edit, :destroy]

  def index
    @projectFolders = ProjectFolder.all
    render json: @projectFolders
  end

  def show
    render json: @projectFolder
  end

  def create
    @projectFolder = Project.new(project_folder_params)

    if @projectFolder
      @projectFolder.save
    end
  end

  def edit
    render json: @projectFolder
  end

  def update
    @projectFolder.update(project_folder_params)
  end

  def destroy
    @project.destroy
  end

  private

  def set_project_folder
    @projectFolder= ProjectFolder.find_by_id(params[:id])
  end

  def project_folder_params
    params.require(:project).permit(:name, :image, :description, :project_link, :git_hub, :video, )
  end
end
