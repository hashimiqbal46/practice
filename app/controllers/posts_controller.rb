class PostsController < ApplicationController
  
  before_action :find_post, only: [:edit, :show, :update, :destroy]
  def index
  	@posts = Post.all
  end

  def new
  	@post = Post.new
  end

  def update
  	if @post.update(post_params)
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end

  def destroy
  	@post.destroy
  	redirect_to posts_path
  end

  private

  def find_post
  	@post = Post.find(params[:id])
  end

  def post_params
  	params.require(:post).permit(:title,:detail)
  end
end
