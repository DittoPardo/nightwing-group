class ProjectsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :update, :destroy, :create]
  expose(:project)
  expose(:projects)

  def index
  end

  def show
  end

  def new
  end

  def create
    self.project = current_user.owned_projects.build(project_params)

    if project.save
      flash[:success] = 'Project was successfully created.'
      redirect_to project
    else
      render 'new'
    end
  end

  private
    def project_params
      params.fetch(:project, {}).permit(:name, :description)
    end
end
