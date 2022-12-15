class Post < ApplicationRecord
  belongs_to :user
  
  validates :spell, presence: true
  validates :meaning, presence: true
  
  def self.looks(search, word)
    @post = Post.where("spell LIKE?","#{word}%")
  end
  
end
