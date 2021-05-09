class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

    with_options presence: true do
      validates :nickname
      validates :birth_day

      with_options format: { with: /\A[ぁ-んァ-ヶ一-龥々]/ } do
       validates :family_name 
       validates :first_name
      end

      with_options format: {with: /\A[\p{katakana}　ー－&&[^ -~｡-ﾟ]]+\z/ } do
       validates :family_name_kana
       validates :first_name_kana
      end
    end
      validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i}
  end

