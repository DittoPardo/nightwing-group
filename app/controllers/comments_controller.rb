class CommentsController < ApplicationController
  before_action :authenticate_user!
  expose(:comment, attributes: :comment_params)
  expose(:project)

  def edit
  end

  def create
    self.comment = Comment.new(comment_params)
    comment.user_id = current_user.id
    comment.project_id = project.id
    if comment.save
      project.comments << comment
      redirect_to project_url(project)
      flash[:success] = 'Comment was successfully created.'
    else
      redirect_to project_url(project)
      flsh[:danger] = 'Can\'t create comment. Enter text.'
    end
  end

  def destroy
    comment.destroy
    redirect_to project_url
    flash[:danger] = 'Comment was successfully destroyed.'
  end

  private
    def comment_params
      params.require(:comment).permit(:text)
    end
end
