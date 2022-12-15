class Users::SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @posts = Post.looks(params[:search], params[:word]).where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellA
    @posts = Post.where("spell LIKE 'a%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
end
