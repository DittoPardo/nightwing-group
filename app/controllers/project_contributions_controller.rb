class ProjectContributionsController < ApplicationController
  expose(:project_contribution, attributes: :project_contribution_params)
  expose(:project)

  def create
    project_contribution.user = current_user

    if project_contribution.save
      redirect_to project, flash: { success: 'Thank you for contributing!' }
    else
      render 'new'
    end
  end

  private
  def project_contribution_params
    params.require(:project_contribution).permit(:amount, :comment, :user_id, :project_id)
  end
end
