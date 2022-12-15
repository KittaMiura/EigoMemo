class Users::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :correct_user, only: [:show, :edit, :update]
  
  def show
    @user = User.find(params[:id])
  end
  
  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
  def correct_user
    @user = User.find(params[:id])
    if current_user != @user
      redirect_to profile_path(current_user.id), notice: "他のユーザーページは見れません…！"
    end
  end
  
end