class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(params_comment)
    @comment.gossip_id = params_id[:gossip_id]
    @comment.save
    if @comment.save
      redirect_to gossip_path(@comment.gossip_id)
    else
      redirect_to root_path
    end
  end

  def edit
    @comment = Comment.find(params[:gossip_id])
  end

  def update
  end

  def destroy
  end

  private

  def params_comment
    params_comment = params.require(:comment).permit(:anonymous_commentor, :body)
  end

  def params_id
    params_id = params.permit(:gossip_id)
  end

end
