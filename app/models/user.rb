class User < ApplicationRecord
  has_many :recipes
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :likes, dependent: :destroy
  has_many :like_recipes, through: :likes, source: :recipe

         validates :name, presence: true
         validates :profile, length: { maximum: 200 }
end
