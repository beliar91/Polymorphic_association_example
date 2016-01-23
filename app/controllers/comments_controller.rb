class CommentsController < ApplicationController
  before_action :load_commentable, only: [:create, :index, :destroy]
  before_action :find_comment, only: [:destroy]

  def create
    @comment = @commentable.comments.new(comment_params)
    if @comment.save
      redirect_to @commentable
    end
  end

  def find_comment
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment.destroy
    redirect_to @commentable
  end

  private

  def load_commentable
    resource, id = request.path.split('/')[1,2]
    @commentable = resource.singularize.classify.constantize.find(id)
  end

  def comment_params
    params.require(:comment).permit(:content, :commentable_type, :commentable_id)
  end


end
