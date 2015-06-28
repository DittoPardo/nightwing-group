class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :authenticate_owner!, only: [:edit, :update, :destroy]

  expose_decorated(:project, attributes: :project_params)
  expose_decorated(:projects) { q.result }
  expose(:comments) { project.comments }
  expose(:comment) { Comment.new }
  expose(:project_contribution) { ProjectContribution.new }

  def create
    project.owner = current_user
    if project.save
      flash[:success] = 'Project was successfully created.'
      redirect_to project
    else
      render 'new'
    end
  end

  def update
    if project.save
      flash[:success] = 'Project was successfully updated.'
      redirect_to project
    else
      render 'edit'
    end
  end

  def destroy
    project.destroy
    flash[:success] = 'Project was successfully destroyed.'
    redirect_to root_path
  end

  private
  def authenticate_owner!
    unless current_user == project.owner
      redirect_to project_url(project), flash: { error: 'You are not allowed to do that.' }
    end
  end

  def project_params
    params.require(:project).permit(:name, :description, :tag_list, :photo)
  end

end
