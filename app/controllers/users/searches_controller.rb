class Users::SearchesController < ApplicationController
  before_action :authenticate_user!
  
  def search
    @posts = Post.looks(params[:search], params[:word]).where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellA
    @posts = Post.where("spell LIKE 'a%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellB
    @posts = Post.where("spell LIKE 'b%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellC
    @posts = Post.where("spell LIKE 'c%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellD
    @posts = Post.where("spell LIKE 'd%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellE
    @posts = Post.where("spell LIKE 'e%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellF
    @posts = Post.where("spell LIKE 'f%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellG
    @posts = Post.where("spell LIKE 'g%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellH
    @posts = Post.where("spell LIKE 'h%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellI
    @posts = Post.where("spell LIKE 'I%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellJ
    @posts = Post.where("spell LIKE 'j%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellK
    @posts = Post.where("spell LIKE 'k%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellL
    @posts = Post.where("spell LIKE 'l%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellN
    @posts = Post.where("spell LIKE 'n%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellM
    @posts = Post.where("spell LIKE 'm%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellO
    @posts = Post.where("spell LIKE 'o%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellP
    @posts = Post.where("spell LIKE 'p%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellQ
    @posts = Post.where("spell LIKE 'q%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellR
    @posts = Post.where("spell LIKE 'r%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellS
    @posts = Post.where("spell LIKE 's%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellT
    @posts = Post.where("spell LIKE 't%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellU
    @posts = Post.where("spell LIKE 'u%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellV
    @posts = Post.where("spell LIKE 'v%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellW
    @posts = Post.where("spell LIKE 'w%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellX
    @posts = Post.where("spell LIKE 'x%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellY
    @posts = Post.where("spell LIKE 'y%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
  def spellZ
    @posts = Post.where("spell LIKE 'z%'").where(user_id: current_user.id).includes(:user).order(:spell)
  end
  
end
