require 'rails_helper'
RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    context '登録ができないとき' do
      it "nicknameが空だと登録できない" do
        
      end
      it "emailが空だと登録できない" do

      end
      it "重複したemailが存在する場合は登録できない" do

      end

      it "emailに@がないと登録できない" do

      end

      it "passwordがないと登録できない" do

      end

      it "passwordが6文字以下だと登録できない" do

      end

      it "password_confirmationが空だと登録できない" do

      end

      it "passwordとpassword_confirmationが一致しないと登録できない" do
      
      end

      it "family_nameが空だと登録できない" do

      end

      it "first_nameが空だと登録できない" do

      end

      it "birth_dayが空だと登録できない" do

      end
    end
    
    context '登録ができないとき' do
      it "passwordが7文字以上であれば登録できる" do

      end
  
      it "passwordが7文字以上で英数字混合であれば登録できる" do
  
      end
  
      it "family_nameが全角文字であれば登録できる" do
    
      end
    
      it "first_nameが全角文字であれあb登録できる" do
      end
    
      it "family_nameが全角カナであれば登録できる" do
      
      end
  
      it "first_nameが全角カナであれあb登録できる" do
      
      end
    end
  end
end


