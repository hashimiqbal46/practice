class UsersController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
  	@users = User.all
  end

  def new
  	@user = User.new
  end

  def update
  	if @user.update(post_params)
  		redirect_to @user
  	else
  		render 'edit'
  	end
  end

  def create
    @user = User.new(post_params)
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
  	@post.destroy
  	redirect_to root_path
  end

  private

  def find_post
  	@user = User.find(params[:id])
  end

  def post_params
  	params.require(:user).permit(:email,:password)
  end
end
