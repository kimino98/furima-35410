require 'rails_helper'
RSpec.describe User, type: :model do
  describe "ユーザー新規登録" do
    context '登録ができないとき' do
      it "nicknameが空だと登録できない" do
      end
      it "emailが空だと登録できない" do

      end
      it "重複したemailが存在する場合は登録できない"

      end

      it "emailに@がないと登録できない"

      end

      it "passwordがないと登録できない"

      end

      it "passwordが6文字以下だと登録できない"

      end

      it "password_confirmationが空だと登録できない"

      end

      it "passwordとpassword_confirmationが一致しないと登録できない"

      end

      it "family_nameが空だと登録できない"

      end

      it "first_nameが空だと登録できない"

      end

      it "birth_dayが空だと登録できない"

      end
    end
    
    context '登録ができないとき' do
      it "passwordが7文字以上であれば登録できる"

      end
  
      it "passwordが7文字以上で英数字混合であれば登録できる"
  
      end
  
      it "family_nameが全角文字であれば登録できる"
    
      end
    
      it "first_nameが全角文字であれあb登録できる"
      end
    
      it "family_nameが全角カナであれば登録できる"
      
      end
  
      it "first_nameが全角カナであれあb登録できる"
      
      end
    end
  end
end


