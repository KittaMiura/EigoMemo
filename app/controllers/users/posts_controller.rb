class Users::PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:show, :edit, :update]
  
  def new
    @post = Post.new
  end
  
  def index
    @posts = Post.where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path, notice: "単語を登録しました！"
    else
      render 'new'
    end
  end
  
  def show
    @post = Post.find(params[:id])
  end
  
  def edit
    @post = Post.find(params[:id])
  end
  
  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to post_path(@post.id)
    else
      render :edit
    end
  end
  
  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end
  
  private
  
  def post_params
    params.require(:post).permit(:spell, :meaning)
  end
  
  def correct_user
    @post = Post.find(params[:id])
    if current_user.id != @post.user_id
      redirect_to posts_path, notice: "他のユーザーが登録したスペルは見れません…！"
    end
  end
  
end
