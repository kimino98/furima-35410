class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :family_name, presence: true,
                          format: { with: /\A[ぁ-んァ-ヶ一-龥]/ }
  validates :first_name, presence: true,
                         format: { with: /\A[ぁ-んァ-ヶ一-龥]/ }
  validates :family_name_kana, presence: true,
                               format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/ }
  validates :first_name_kana, presence: true,
                              format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/ }
  validates :birth_day, presence: true
end
