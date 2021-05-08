require 'rails_helper'
RSpec.describe User, type: :model do
   before do
    @user = FactoryBot.build(:user)
   end
   describe "ユーザー新規登録" do
    context '登録ができないとき' do
      it "nicknameが空だと登録できない" do
         @user.nickname = ''
         @user.valid?
         expect(@user.errors.full_messages).to include("Nickname can't be blank")
      end
      it "emailが空だと登録できない" do
         @user.email = ''
         @user.valid?
         expect(@user.errors.full_messages).to include("Email can't be blank")
      end
      it "重複したemailが存在する場合は登録できない" do
         FactoryBot.create(:user, email: "abc@abc.com")
         @user = FactoryBot.build(:user, email: "abc@abc.com")
         @user.valid?
         expect(@user.errors.full_messages).to include("Email has already been taken")
      end

      it "emailに@がないと登録できない" do
         @user.email = 'testtest.com'
         @user.valid?
         expect(@user.errors.full_messages).to include("Email is invalid")
      end

      it "passwordがないと登録できない" do
         @user.password =''
         @user.valid?
         expect(@user.errors.full_messages).to include("Password can't be blank")
      end

      it "passwordが6文字以下だと登録できない" do
          @user.password = 'a1234'
          @user.password_confirmation = 'a1234'
          @user.valid?
          expect(@user.errors.full_messages).to include("Password is too short (minimum is 6 characters)")
      end

      it "passwordが6文字以上で英数字混合でなければ登録できない" do
        @user.password = '123456'
        @user.password_confirmation = '123456'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end

      it "passwordが英字のみでは登録出来ない" do
        @user.password = 'abcdefg'
        @user.password_confirmation = 'abcdefg'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end

      it "passwordが全角では登録出来ない" do
        @user.password = 'ＡＢＣ123'
        @user.password_confirmation = 'ＡＢＣ123'
        @user.valid?
        expect(@user.errors.full_messages).to include('Password is invalid')
      end

      it "family_nameが空だと登録できない" do
         @user.family_name = ''
         @user.valid?
         expect(@user.errors.full_messages).to include("Family name can't be blank")
      end

      it "first_nameが空だと登録できない" do
         @user.first_name = ''
         @user.valid?
         expect(@user.errors.full_messages).to include("First name can't be blank")
      end

      it "family_nameが全角文字でないと登録できない" do
        @user.family_name = "aaa"
        @user.valid?
        expect(@user.errors.full_messages).to include('Family name is invalid')
      end

      it "first_nameが全角文字でないと登録できない" do
        @user.first_name = "aaa"
        @user.valid?
        expect(@user.errors.full_messages).to include('First name is invalid')
      end

      it "family_name_kanaが全角カナでないと登録できない" do
        @user.family_name_kana = "aaa"
        @user.valid?
        expect(@user.errors.full_messages).to include('Family name kana is invalid')
      end

      it "first_name_kanaが全角カナでないと登録できない" do
        @user.first_name_kana = "aaa"
        @user.valid?
        expect(@user.errors.full_messages).to include('First name kana is invalid')
      end

      it "birth_dayが空だと登録できない" do
        @user.birth_day = ''
        @user.valid?
        expect(@user.errors.full_messages).to include("Birth day can't be blank")
      end
    end
    context '登録できるとき' do
      it "first_nameが全角文字であれば登録できること" do
        @user.first_name = 'ぜんかく'
        @user.valid?
        expect(@user).to be_valid
      end

      it "family_nameが全角文字であれば登録できること" do
        @user.family_name = 'ぜんかく'
        @user.valid?
        expect(@user).to be_valid
      end

      it "nickname、email, password, password_confirmation, family_name, first_name, family_name_kana, first_name_kana, birth_dayが存在する場合は登録ができる" do
        expect(@user).to be_valid
      end
    end
  end
end


