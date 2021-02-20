class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #必須項目の追加
  validates :nickname, presence: true
  
  #プロフィール画像用
  has_one_attached :image
  
  has_many :travels
  has_many :plans, through: :travels
  
end
