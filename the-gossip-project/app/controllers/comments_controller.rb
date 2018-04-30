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
    @comment = Comment.find(params[:gossip_id])
    @comment.update(params_comment)
    redirect_to gossip_path(@comment.gossip_id)
  end

  def destroy
    @gossip = Gossip.find(params[:gossip_id])
    @comment = @gossip.comments.find(params[:id])
    @comment.destroy
    redirect_to gossip_path(@gossip)
  end

  private

  def params_comment
    params_comment = params.require(:comment).permit(:anonymous_commentor, :body)
  end

  def params_id
    params_id = params.permit(:gossip_id)
  end

end
