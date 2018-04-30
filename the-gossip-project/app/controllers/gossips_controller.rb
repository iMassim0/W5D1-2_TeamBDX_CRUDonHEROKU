class GossipsController < ApplicationController
  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.create(params_gossip)
    if @gossip.save
      redirect_to gossip_path(@gossip.id)
    else
      redirect_to root_path
    end
  end

  def show
    @gossip = Gossip.find(params[:id])
    @comment = Comment.new
    @comments = Comment.all
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end

  def update
    @gossip = Gossip.find(params[:id])
    @gossip.update(params_gossip)
    redirect_to gossip_path(@gossip.id)
  end

  def index
    @gossips = Gossip.all
  end

  private
  def params_gossip
    params_gossip = params.require(:gossip).permit(:anonymous_author, :content)
  end
end
