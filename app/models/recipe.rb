class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  
  has_one_attached :image
  belongs_to_active_hash :category

  validates :image,:name, :foodstuff,:cook, :category, presence: true
  validates :category_id, numericality: { other_than: 1,message: "を選択してください" } 
end
