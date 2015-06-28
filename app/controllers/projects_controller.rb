class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  expose(:project, attributes: :project_params)
  expose(:projects)
  expose(:comments) { project.comments }
  expose(:comment) { Comment.new }
  expose(:found_projects) { q.result }

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

  def project_params
    params.require(:project).permit(:name, :description)
  end

end
