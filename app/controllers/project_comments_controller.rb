class ProjectCommentsController < ApplicationController
  before_action :set_project_comment, only: [:show, :update, :edit, :destroy]
  def index
    @projectComments = ProjectComment.all
    render json: @projectComments
  end

  def show
    render json: @projectComment
  end

  def create
    @projectComment = ProjectComment.new(project_comment_params)

    if @projectComment
      @projectComment.save
    end
  end

  def edit
    render json: @projectComment
  end

  def update
    @projectComment.update(project_comment_params)
  end

  def destroy
    @projectComment.destroy
  end

  private

  def set_project_comment
    @projectComment= ProjectComment.find_by_id(params[:id])
  end

  def project_comment_params
    params.require(:project_comment).permit(:name, :number_of_proj, )
  end
end
