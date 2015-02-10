class PostsController < ApplicationController
  before_action :all_posts, only: [:index, :create, :update, :destroy]
  before_action :set_posts, only:[:edit,:update, :destroy, :show]
  respond_to :html, :js
  layout 'bootstrap'
  
  def new
    @post = Post.new
  end

  def create
    @post  = Post.create(post_params)
    respond_to do |format|    
    format.html { redirect_to posts_url }
    format.js
    end 
  end
  
  def update
    @post.update_attributes(post_params)
  end
  
  def destroy
    @post.destroy
  end
  
  def show
  end

  private

  def all_posts
    @posts = Post.all
  end

  def set_posts
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :created_at)
  end
end
