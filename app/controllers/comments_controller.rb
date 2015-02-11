class CommentsController < ApplicationController
  before_action :all_comments, only: [:index, :create, :update, :destroy]
  before_action :set_comments, only:[:edit,:update, :destroy, :show]
  respond_to :html, :js
  layout 'bootstrap'
  
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @posts = Post.all
    @comment.user = current_user
    @comment.save
  end 

  
  def update
    @comment.update_attributes(comment_params)
    @posts = Post.all
  end
  
  def destroy
    @post = Post.find(params[:post_id])
    @comment =@post.comments.find(params[:id]).destroy
    @posts = Post.all
  end
  
  def show
  end

  private

  def all_comments
    @comments = Comment.all.includes(:users)
  end

  def set_comments
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end
