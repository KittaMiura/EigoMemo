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
  
  private
  
  def post_params
    params.require(:diary).permit(:title, :english, :japanese)
  end
  
end
