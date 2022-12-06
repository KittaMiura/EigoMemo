class Users::DiariesController < ApplicationController
  
  def new
    @diary = Diary.new
  end
  
  def index
    @diaries = Diary.where(user_id: current_user.id).includes(:user).all
  end
  
  def create
    @diary = Diary.new(post_params)
    @diary.user_id = current_user.id
    if @diary.save
      redirect_to diaries_path
    else
      render 'new'
    end
  end
  
  def show
    @diary = Diary.find(params[:id])
  end
  
  def edit
    @diary = Diary.find(params[:id])
  end
  
  def update
    @diary = Diary.find(params[:id])
    if @diary.update(post_params)
      redirect_to diary_path(@diary.id)
    else
      render :edit
    end
  end
  
  def destroy
    @diary = Diary.find(params[:id])
    @diary.destroy
    redirect_to diaries_path
  end
  
  private
  
  def post_params
    params.require(:diary).permit(:title, :english, :japanese)
  end
  
end
