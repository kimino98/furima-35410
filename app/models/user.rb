class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    with_options presence: true do
      validates :nickname
      validates :family_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々]/ }
      validates :first_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々]/ }
      validates :family_name_kana, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/ }
      validates :first_name_kana, format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/ }
      validates :birth_day
    end
      validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}
  end

