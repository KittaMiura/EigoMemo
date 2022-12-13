class Post < ApplicationRecord
  belongs_to :user
  
  validates :spell, presence: true
  validates :meaning, presence: true
  
end
